class Spree::CommentType < ActiveRecord::Base
  has_many :comments
end
