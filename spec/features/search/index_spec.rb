require 'rails_helper'

RSpec.describe "Search index page" do
  describe 'fire nation search' do
    it 'has character count' do
      visit root_path
  
      select "Fire Nation", from: :nation
      click_on "Search For Members"
  
      expect(current_path).to eq('/search')
      expect(page).to have_content('Total Characters: 97')
    end

    it 'has character data' do
      visit root_path

      select "Fire Nation", from: :nation
      click_on "Search For Members"
      
      expect(page).to have_content("Name: Chan (Fire Nation admiral)")
      expect(page).to have_content("Enemies: None")
      expect(page).to have_content("Allies: None")
      expect(page).to have_content('["Aang"]')
      expect(page).to have_content("Affiliation: Fire Nation military")
      expect(page).to have_content("Fire Nation Fire Nation Royal Family")
      expect(page).to have_content('["Combustion Man"]')
    end
  end
end