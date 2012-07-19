class Spree::Comment < ActiveRecord::Base
  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true
  belongs_to :comment_type

  default_scope :order => 'created_at ASC'

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
  belongs_to :user

  attr_accessible :commentable_id, :commentable_type, :user_id, :comment_type_id, :comment

end
