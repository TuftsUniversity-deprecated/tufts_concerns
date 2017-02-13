# Generated via
#  `rails generate curation_concerns:work TuftsVideo`
require 'rails_helper'
include Warden::Test::Helpers

feature 'Create a TuftsVideo' do
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
      visit new_curation_concerns_tufts_video_path
      fill_in 'Title', with: 'Test TuftsVideo'
      click_button 'Create TuftsVideo'
      expect(page).to have_content 'Test TuftsVideo'
    end
  end
end
