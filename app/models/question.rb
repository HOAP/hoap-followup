class Question < ActiveRecord::Base
  attr_accessible :page, :text, :values, :as => :creator
  has_many :answers
  serialize :values

  # Find all of the Question records for the current page of the
  # given participant.
  def self.find_for(participant)
    self.where(page: participant.page).order("id ASC")
  end
end
