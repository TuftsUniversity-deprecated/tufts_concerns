# Generated via
#  `rails generate curation_concerns:work TuftsAudio`
require 'rails_helper'
include Warden::Test::Helpers

feature 'Create a TuftsAudio' do
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
      visit new_curation_concerns_tufts_audio_path
      fill_in 'Title', with: 'Test TuftsAudio'
      click_button 'Create TuftsAudio'
      expect(page).to have_content 'Test TuftsAudio'
    end
  end
end
