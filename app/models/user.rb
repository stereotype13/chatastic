class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_name
  # attr_accessible :title, :body
  validates :user_name, uniqueness: true

  # def active_for_authentication?
  #   self.update_attribute(:signed_in, true)
  # end
end
