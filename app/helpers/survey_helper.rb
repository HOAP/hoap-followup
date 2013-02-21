module SurveyHelper
  def page_count(group)
    if group == 0
      "5"
    else
      "4"
    end
  end
end
