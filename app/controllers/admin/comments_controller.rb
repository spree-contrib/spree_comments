class Admin::CommentsController < Admin::ResourceController
  private
  
  def location_after_save
    :back
  end
end
