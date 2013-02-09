class Participant < ActiveRecord::Base
  attr_accessible :completed, :group, :key, :page, :pno, :as => :creator
  attr_accessible :page
  has_many :answers
end
