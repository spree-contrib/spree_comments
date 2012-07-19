class Spree::CommentType < ActiveRecord::Base
  has_many :comments
  attr_accessible :name, :applies_to
end
