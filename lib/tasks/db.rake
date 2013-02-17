namespace :db do
  namespace :participant do
    task :dummy, [:count] => [:environment] do |t,args|
      first = Participant.count + 1
      count = (args[:count] || 10).to_i
      last = first + count - 1
      ptype = ["Finished", "Control"].cycle
      (first..last).each do |i|
        p = Participant.make(format("%04d", i), ptype.next)
        puts "#{p.pno},#{p.group == 0 ? "Intervention" : "Control"}"
      end
    end
  end
end
