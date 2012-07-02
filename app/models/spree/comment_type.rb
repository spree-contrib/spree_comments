class Spree::CommentType < ActiveRecord::Base
  attr_accessible :name, :applies_to
  has_many :comments
end
