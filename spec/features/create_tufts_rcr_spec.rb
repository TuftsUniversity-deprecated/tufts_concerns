# Generated via
#  `rails generate curation_concerns:work TuftsRcr`
require 'rails_helper'
include Warden::Test::Helpers

feature 'Create a TuftsRcr' do
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
      visit new_curation_concerns_tufts_rcr_path
      fill_in 'Title', with: 'Test TuftsRcr'
      click_button 'Create TuftsRcr'
      expect(page).to have_content 'Test TuftsRcr'
    end
  end
end
