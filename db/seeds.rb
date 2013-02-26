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
  {page: 3, text: "Did you get feedback on the iPad about your drinking?", values: ["Yes", "No, I did <b>not</b> receive feedback on my drinking but would like to.", "No, I did <b>not</b> receive feedback on my drinking and I am <b>not</b> interested in receiving it."]},
  {page: 3, text: "The feedback you received may have included comparisons of your drinking with the average drinking levels of others the same age and gender as you. The averages presented were:", values: ["About what I expected", "Higher than I expected", "Lower than I expected", "I had no idea what the average was", "I didn't get this feedback"]},
  {page: 4, text: "We would be interested in any comments you would like to make about your experience with alcohol or any aspect of being involved in this research."}
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
  User.create({:login => "tony", :email => "tony@agrav.net", :password => "default", :password_confirmation => "default", :admin => true}, as: :creator)
end
