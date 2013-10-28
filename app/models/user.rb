class User < ActiveRecord::Base

  has_secure_password
  validates :email, :password, :username, :presence => { :on => :create }
  attr_accessible :email, :password, :username

  has_many :posts
  has_many :comments
end
