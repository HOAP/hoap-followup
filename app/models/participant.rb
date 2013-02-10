class Participant < ActiveRecord::Base
  attr_accessible :completed, :group, :key, :page, :pno, :as => :creator
  attr_accessible :page
  has_many :answers

  def self.find_code(code)
    result = nil
    if !code.blank? && code =~ /^\d{1,5}$/
      result = Participant.where(pno: code).first
    end
    return result
  end
end
