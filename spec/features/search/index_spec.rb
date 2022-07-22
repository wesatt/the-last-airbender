# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Search results index', type: :feature do
  describe 'midmod user story' do
    # As a user,
    # When I visit "/"
    # And I Select "Fire Nation" from the select field
    # (Note: Use the existing select field)
    # And I click "Search For Members"
    # Then I should be on page "/search"

    # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
    # And I should see a list with the detailed information for the first 25 members of the Fire Nation.

    # And for each of the members I should see:
    # - The name of the member (and their photo, if they have one)
    # - The list of allies or "None"
    # - The list of enemies or "None"
    # - Any affiliations that the member has
    it 'should be accessible after entering a search from the root directoy' do
      visit '/'

      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq('/search')
      expect(page).to have_content('Character #', count: 97)
      expect(page).to have_content('None')

      within '#character-25' do
        expect(page).to have_content('Character #25:')
        expect(page).to have_selector(:id, 'image')
        expect(page).to have_content('Allies:')
        expect(page).to have_content('Enemies:')
        expect(page).to have_content('Affiliation:')
      end

      within '#character-26' do
        expect(page).to have_content('Character #26:')
        expect(page).to_not have_selector(:id, 'image')
        expect(page).to_not have_content('Allies:')
        expect(page).to_not have_content('Enemies:')
        expect(page).to_not have_content('Affiliation:')
      end
    end
  end
end
