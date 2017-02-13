# Generated via
#  `rails generate curation_concerns:work TuftsEad`
require 'rails_helper'
include Warden::Test::Helpers

feature 'Create a TuftsEad' do
  context 'a logged in user' do
    let(:user_attributes) do
      { username: 'test@example.com' }
    end
    let(:user) do
      User.new(user_attributes) { |u| u.save(validate: false) }
    end

    before do
      login_as user
    end

    scenario do
      visit new_curation_concerns_tufts_ead_path
      fill_in 'Title', with: 'Test TuftsEad'
      click_button 'Create TuftsEad'
      expect(page).to have_content 'Test TuftsEad'
    end
  end
end
