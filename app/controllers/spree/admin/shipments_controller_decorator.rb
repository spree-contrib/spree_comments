Spree::Api::ShipmentsController.class_eval do
  def comments
    shipment
    @comment_types = Spree::CommentType.where(:applies_to => "Shipment")
  end
end
