class SurveyController < ApplicationController
  before_filter :get_participant, only: [:survey, :save]

  def index
  end

  def start
    participant = Participant.find_code(params[:code])
    if participant.nil?
      redirect_to root_url(code: params[:code], error: "true")
    else
      if participant.page == 0
        participant.next_page!
      end
      redirect_to survey_url(key: participant.key)
    end
  end

  def survey
    @questions = Question.find_for(@participant)
    @answers = Answer.find_for(@participant)
    render "page#{@participant.page}"
  end

  def save
    @participant.update_progress(params[:page])
    if !params[:answer].blank?
      @answers, error_count = Answer.save_all(params[:answer])
    end
    if error_count == 0
      @participant.next_page!
      redirect_to survey_url(key: @participant.key)
    else
      @questions = Question.find_for(@participant)
      render "page#{@participant.page}"
    end
  end

  private

  def get_participant
    @participant = Participant.find_by_key(params[:key])
    if @participant.nil?
      redirect_to root_url
    end
  end
end
