class Line < ActiveRecord::Base
  attr_accessible :text
  
  belongs_to :user, :conversation
end
