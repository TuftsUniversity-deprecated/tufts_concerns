# Generated via
#  `rails generate curation_concerns:work TuftsTei`
require 'rails_helper'
include Warden::Test::Helpers

feature 'Create a TuftsTei' do
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
      visit new_curation_concerns_tufts_tei_path
      fill_in 'Title', with: 'Test TuftsTei'
      click_button 'Create TuftsTei'
      expect(page).to have_content 'Test TuftsTei'
    end
  end
end
