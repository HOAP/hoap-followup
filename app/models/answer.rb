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

  # Get all of the Answer records for the given Participant, limited to
  # their current page of the survey.
  def self.find_for(participant)
    self.where(participant_id: participant.id, page: participant.page).order("id ASC")
  end

  # Save all of the answer values for the submitted page.
  # Returns all of the updated Answer objects, sorted by id, and a count of errors.
  def self.save_all(params)
    answers = []
    error_count = 0
    unless params == nil
      params.each do |id, line|
        ans = Answer.find(id)
        # Drop the 'question_id' field, as this is used to make sure all answers for
        # the page are sent back, but we do not actually want to change this field.
        line.delete("question_id")
        ans.update_attributes(line)
        error_count += ans.errors.count
        answers << ans
      end
    end
    answers.sort_by! { |ans| ans.id }
    return answers, error_count
  end
end
