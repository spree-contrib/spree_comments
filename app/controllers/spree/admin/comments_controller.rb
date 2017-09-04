class Spree::Admin::CommentsController < Spree::Admin::ResourceController
  private
  
  def location_after_save
    redirect_back(fallback_location: root_path)
  end
end
