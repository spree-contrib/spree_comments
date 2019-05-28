class Spree::Admin::CommentsController < Spree::Admin::ResourceController
  private

  def location_after_save
    # :back is not deprecated in Rails 5, but request.referrer should also work as intended on older versions (confirmed to work on Rails 4 and 5)
    request.referrer
  end

end
