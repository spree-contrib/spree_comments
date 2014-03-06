require 'spec_helper'

feature 'Admin comment on order', js: true do
  stub_authorization!

  given(:user) { create(:user) }
  given!(:order) { create :completed_order_with_totals }

  background do
    Spree::BaseController.any_instance.stub :spree_current_user => user
    visit spree.edit_admin_order_path(order)
  end

  scenario 'comment on an order' do
    click_link 'Comments'
    fill_in 'comment_comment', with: 'this is a comment'
    click_button 'Add Comment'
    expect(page).to have_text 'Comment has been successfully created'
  end

  context 'an order has a comment' do
    scenario 'the comment shows up' do
      pending
    end
  end
end
