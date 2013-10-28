class Comment < ActiveRecord::Base
  attr_accessible :comment_text
  belongs_to :user
  belongs_to :post
end
