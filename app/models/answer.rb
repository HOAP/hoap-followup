class Answer < ActiveRecord::Base
  attr_accessible :page, :participant_id, :question_id, :as => :creator
  attr_accessible :value
  belongs_to :participant
  belongs_to :question

  # Create and Answer record for each Question for the given Participant
  def self.make_all(participant)
    questions = Question.select("id, page").order("id ASC")
    questions.each do |question|
      a = Answer.create({participant_id: participant.id, question_id: question.id, page: question.page}, as: :creator)
    end
  end
end
