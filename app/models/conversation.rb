class Conversation < ActiveRecord::Base
  # attr_accessible :title, :body
  
  attr_accessible :version, :user_ids
  
  has_and_belongs_to_many :users
  has_many :lines
   
end
