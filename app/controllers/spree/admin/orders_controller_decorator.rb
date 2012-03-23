Spree::Admin::OrdersController.class_eval do
  def comments
    load_order
    @comment_types = Spree::CommentType.where(:applies_to => "Order")
  end
end
