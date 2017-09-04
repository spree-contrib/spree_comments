class Spree::Admin::CommentsController < Spree::Admin::ResourceController
  private
  
  def location_after_save
    redirect_to :back
  end
end
