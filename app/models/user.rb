class User < ActiveRecord::Base
  attr_accessible :email, :password, :username

  has_many :posts
  has_many :comments
end
