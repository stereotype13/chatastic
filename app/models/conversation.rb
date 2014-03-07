class Conversation < ActiveRecord::Base
  # attr_accessible :title, :body
  after_initialize :init
  
  attr_accessible :version, :user_ids
  
  has_and_belongs_to_many :users
  has_many :lines, dependent: :destroy
  accepts_nested_attributes_for :lines, :allow_destroy => true
   
  def add_line line
    line.update_attribute(:line_number, self.version)

    self.lines << line
    self.version += 1

    if self.save
      true
    else
      false
    end
  end

  private
  def init
    self.version ||= 0
  end
end
