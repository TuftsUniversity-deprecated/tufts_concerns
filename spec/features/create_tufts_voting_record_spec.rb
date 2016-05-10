# Generated via
#  `rails generate curation_concerns:work TuftsVotingRecord`
require 'rails_helper'
include Warden::Test::Helpers

feature 'Create a TuftsVotingRecord' do
  context 'a logged in user' do
    let(:user_attributes) do
      { email: 'test@example.com' }
    end
    let(:user) do
      User.new(user_attributes) { |u| u.save(validate: false) }
    end

    before do
      login_as user
    end

    scenario do
      visit new_curation_concerns_tufts_voting_record_path
      fill_in 'Title', with: 'Test TuftsVotingRecord'
      click_button 'Create TuftsVotingRecord'
      expect(page).to have_content 'Test TuftsVotingRecord'
    end
  end
end
