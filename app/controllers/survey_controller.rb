class SurveyController < ApplicationController
  def index
  end

  def start
    participant = Participant.find_code(params[:code])
    if participant.nil?
      redirect_to root_url(code: params[:code], error: "true")
    else
      participant.page = 1
      participant.save
      redirect_to survey_url(key: participant.key)
    end
  end

  def survey
  end

  def save
  end
end
