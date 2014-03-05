class Conversation < ActiveRecord::Base
  # attr_accessible :title, :body
  
  attr_accessible :user, :version
  
  belongs_to :user
  has_many :participants
  has_many :lines
 
  accepts_nested_attributes_for :participants
end
