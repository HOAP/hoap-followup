require 'csv'

namespace :db do
  namespace :participant do
    task :dummy, [:count] => [:environment] do |t,args|
      first = Participant.count + 1
      count = (args[:count] || 10).to_i
      last = first + count - 1
      ptype = ["a", "b"].cycle
      (first..last).each do |i|
        p = Participant.make(format("%04d", i), ptype.next)
        puts "#{p.pno},#{p.group_label}"
      end
    end

    task :load => [:environment] do
      participants = CSV.read("db/participant_list.csv")
      count = 0
      participants.each do |row|
        if Participant.make(row[0], row[1])
          count += 1
          print "."
        end
      end
      puts ""
      if count > 0
        puts "Successfully created #{count} participants records."
      else
        puts "Failed to create any participant records."
      end
    end
  end
end
