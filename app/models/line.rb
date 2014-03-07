class Line < ActiveRecord::Base
  attr_accessible :text, :user, :line_number
  
  belongs_to :user
  belongs_to :conversation, autosave: true

  validates :user, presence: true
end
