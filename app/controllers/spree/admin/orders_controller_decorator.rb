Spree::Admin::OrdersController.class_eval do
  def comments
    load_order
    @comment_types = CommentType.where(:applies_to => "Order")
  end
end
