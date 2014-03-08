require 'spec_helper'

feature 'Admin comment type', js: true do
  stub_authorization!

  background do
    visit spree.admin_path
    click_link 'Configuration'
    click_link 'Comment Types'
  end

  context 'when no comment type exists'  do
    scenario 'can create a new comment type' do
      expect(page).to have_text 'NEW COMMENT TYPE NO COMMENT TYPES FOUND'

      click_link 'New Comment Type'
      fill_in 'comment_type_name', with: 'comment type'
      click_button 'Create'

      expect(page).to have_text 'Comment type "comment type" has been successfully created!'
    end
  end

  context 'when there is a comment type' do
    given!(:comment_type) { create :comment_type }

    scenario 'update the existing comment type' do
      click_icon :edit
      fill_in 'comment_type_name', with: 'comment type updated'
      click_button 'Update'

      expect(page).to have_text 'Comment type "comment type updated" has been successfully updated!'
    end

    scenario 'delete the existing comment type' do
      click_icon :trash
      page.driver.browser.switch_to.alert.accept unless Capybara.javascript_driver == :poltergeist

      expect(page).to have_text 'Comment type "comment type" has been successfully removed!'
    end
  end
end
