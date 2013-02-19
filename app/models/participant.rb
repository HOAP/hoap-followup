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

  # Creates the Participant and blank Answer records for the given participant
  # number and completion status from the first survey. Only control group and
  # intervention group participants are created.
  # Returns nil when given an invalid/unwanted completion status, or the created
  # Participant object otherwise
  def self.make(pno, completion_status)
    case completion_status
    when "Control"
      # Control
      group = 1
    when "Finished"
      # Intervention
      group = 0
    else
      # Incomplete or ineligible
      return nil
    end
    participant = self.new({pno: pno, group: group}, as: :creator)
    begin
      participant.key = SecureRandom.hex(6)
      participant.save
    rescue ActiveRecord::RecordNotUnique
      retry
    end
    Answer.make_all(participant)
    return participant
  end

  # Sets the current page to that of the page the participant
  # just submitted. Checks to prevent skipping ahead and to
  # ensure a valid page.
  def update_progress(page)
    unless page.nil?
      p = page.to_i
      if p > 0 && p <= self.page
        self.page = p
        self.save
      end
    end
  end

  # Increment the current page, and save.
  # If the end is reached, automatically sets completed to true.
  def next_page!
    if self.page < 5
      self.page += 1
      if self.page == 3 && self.group == 1
        # Control group skips questions about first survey
        self.page += 1
      elsif self.page == 5
        self.completed = true
      end
      self.save
    end
  end
end
