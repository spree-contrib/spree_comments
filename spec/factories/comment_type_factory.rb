FactoryGirl.define do
  factory :comment_type, class: Spree::CommentType do
    name 'comment type'
    applies_to 'Order'
  end
end
