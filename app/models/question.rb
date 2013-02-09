class Question < ActiveRecord::Base
  attr_accessible :page, :text, :values, :as => :creator
  has_many :answers
  serialize :values
end
