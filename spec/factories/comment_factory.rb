FactoryGirl.define do
  factory :comment, class: Spree::Comment do
    comment 'This is a comment'

    factory :comment_for_order do
      comment_type
      commentable { create :order }
    end
  end
end
