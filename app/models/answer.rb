class Answer < ActiveRecord::Base
  attr_accessible :page, :participant_id, :question_id, :as => :creator
  attr_accessible :value
  belongs_to :participant
  belongs_to :question
end
