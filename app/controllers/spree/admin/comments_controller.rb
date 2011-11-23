class Spree::Admin::CommentsController < Spree::Admin::ResourceController
  private
  
  def location_after_save
    :back
  end
end