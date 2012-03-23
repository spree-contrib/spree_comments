Spree::Admin::ShipmentsController.class_eval do
  def comments
    load_shipment
    @comment_types = Spree::CommentType.where(:applies_to => "Shipment")
  end
end
