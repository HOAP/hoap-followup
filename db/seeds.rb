# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

questions = [
  {page: 1, text: "Yesterday", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 1, text: "Two days ago", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 1, text: "Three days ago", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 1, text: "Four days ago", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 1, text: "Five days ago", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 1, text: "Six days ago", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 1, text: "Seven days ago", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 1, text: "Was last week typical of your usual drinking?", values: ["Yes", "No, I usually drink less", "No, I usually drink more"]},
  {page: 2, text: "Have you had any alcohol in the <b>last 6 months</b>?", values: ["Yes", "No"]},
  {page: 2, text: "How often do you have a drink containing alcohol?", values: ["Never", "Monthly or less", "2-4 times a month", "2-3 times a week", "4 or more times a week"]},
  {page: 2, text: "How many Standard Drinks containing alcohol do you have on a typical day when you are drinking? (Please refer to the Standard Drinks guide on the left)", values: ["1 or 2", "3 or 4", "5 or 6", "7 to 9", "10 or more"]},
  {page: 2, text: "How often do you have 6 or more Standard Drinks on one occasion?", values: ["Never", "Less than monthly", "Monthly", "Weekly", "Daily or almost daily"]},
  {page: 2, text: "How often during the last 6 months have you found that you were not able to stop drinking once you had started?", values: ["Never", "Less than monthly", "Monthly", "Weekly", "Daily or almost daily"]},
  {page: 2, text: "How often during the last 6 months have you failed to do what was normally expected of you because of drinking?", values: ["Never", "Less than monthly", "Monthly", "Weekly", "Daily or almost daily"]},
  {page: 2, text: "How often during the last 6 months have you needed a first drink in the morning to get yourself going after a heavy drinking session?", values: ["Never", "Less than monthly", "Monthly", "Weekly", "Daily or almost daily"]},
  {page: 2, text: "How often during the last 6 months have you had a feeling of guilt or remorse after drinking?", values: ["Never", "Less than monthly", "Monthly", "Weekly", "Daily or almost daily"]},
  {page: 2, text: "How often during the last 6 months have you been unable to remember what happened the night before because of your drinking?", values: ["Never", "Less than monthly", "Monthly", "Weekly", "Daily or almost daily"]},
  {page: 2, text: "Have you or someone else been injured because of your drinking?", values: ["No", "Yes, but not in the last 6 months", "Yes, during the last 6 months"]},
  {page: 2, text: "Has a relative, friend, doctor or other health worker been concerned about your drinking or suggested you cut down?", values: ["No", "Yes, but not in the last 6 months", "Yes, during the last 6 months"]},
  {page: 2, text: "Have you sought help to reduce your drinking?", values: ["No", "Yes, but not in the last 6 months", "Yes, during the last 6 months"]},
  {page: 2, text: "I saw my GP or another doctor"},
  {page: 2, text: "I saw a psychologist or counsellor"},
  {page: 2, text: "I attended a self-help group (e.g., Alcoholics Anonymous)"},
  {page: 2, text: "I used a self-help program on the internet"},
  {page: 2, text: "Other (please specify):"},
  {page: 2, text: "Would you like us to post feedback about your drinking to you (this would be based on the answers you provided in this questionnaire)?", values: ["No", "Yes"]},
  {page: 3, text: "<b>In the past 6 months</b>, how many times did you visit a doctor?<br><i>Do NOT include visits while in the hospital or the hospital emergency department.</i>", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 3, text: "<b>In the past 6 months</b>, how many times did you go to a <b>hospital</b> emergency department?", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 3, text: "How many different <b>times</b> did you stay in a hospital overnight or longer <b>in the past 6 months</b>?", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 3, text: "How many total NIGHTS did you spend in the hospital <b>in the past 6 months</b>?", values: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25-29", "30-34", "35-39", "40-49", "50 or more"]},
  {page: 4, text: "Did it make you think about your drinking?", values: ["Yes", "No"]},
  {page: 4, text: "Did you change your drinking as a consequence?", values: ["My drinking did not change", "My drinking decreased", "My drinking increased"]},
  {page: 4, text: "Deciding to take part.", values: ["Yes", "No"]},
  {page: 4, text: "Answering questions about my drinking at the hospital.", values: ["Yes", "No"]},
  {page: 4, text: "Knowing you would ask me to answer similar questions in the future.", values: ["Yes", "No"]},
  {page: 4, text: "Completing the follow up surveys.", values: ["Yes", "No"]},
  {page: 4, text: "Sometimes people don't feel comfortable reporting how much they drink. How comfortable were you in answering the questions in this survey?", values: ["Very comfortable", "Somewhat comfortable", "Somewhat uncomfortable", "Very uncomfortable"]},
  {page: 5, text: "Did you receive personalised feedback about your drinking on the iPad while you were waiting for your outpatient appointment?", values: ["No", "Yes"]},
  {page: 5, text: "Would you be interested in receiving some personalised feedback about your drinking (this would involve following a link to a website in an email or a letter we send to you)?", values: ["No thanks", "Yes, please send the link to me"]},
  {page: 6, text: "Telephone support from a counsellor.", values: ["No", "Yes"]},
  {page: 6, text: "Access to a website that supports people who are trying to change their drinking.", values: ["No", "Yes"]},
  {page: 6, text: "Having results about my drinking sent to my GP.", values: ["No", "Yes"]},
  {page: 6, text: "Would you be willing to take part in a brief telephone interview about how we might improve the way care is provided to patients with unhealthy drinking?", values: ["No", "Yes"]},
  {page: 6, text: "The best number to contact me on is:"},
  {page: 6, text: "The best days and times to call are:"},
  {page: 7, text: "We would be interested in any comments you would like to make about your experience with alcohol or any aspect of being involved in this research."}
]

qq = Question.order("id ASC")
questions.each do |question|
  q = qq.shift
  if q.nil?
    Question.create(question, {as: :creator})
  else
    q.update_attributes(question, {as: :creator})
  end
end
unless qq.empty?
  qq.each do |q|
    q.delete
  end
end

if User.count == 0
  User.create({:login => "admin", :email => "admin@example.com", :password => "default", :password_confirmation => "default", :admin => true}, as: :creator)
end
