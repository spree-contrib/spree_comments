require 'spec_helper'

feature 'Admin comment type' do
  stub_authorization!

  context 'when no comment type exists' do
    background do
      visit spree.admin_path

      click_link 'Configuration'
      click_link 'Comment Types'
    end

    scenario 'can create a new comment type' do
      expect(page).to have_text 'No Comment Types found'
    end
  end
end
