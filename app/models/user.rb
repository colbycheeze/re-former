class User < ActiveRecord::Base
  #attr_accessible :username, :email, :password

  before_save { |user| user.email = email.downcase}

  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
