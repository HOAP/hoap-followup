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

  # Finds the participant for the given key (participant identifier given
  # in the URL). Returns nil if the key is invalid or non-existent.
  def self.find_by_key(key)
    participant = nil
    if !key.blank? && key =~ /^[0-9a-f]{12}$/i
      participant = Participant.where(key: key).first
    end
    return participant
  end
end
