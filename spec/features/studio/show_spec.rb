require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'I visit a studio show page' do
    it "then I see the studio's name and location" do
      studio1 = Studio.create!(name: "Big Movie Studio", location: "Hollywood")
      visit "/studios/#{studio1.id}"

      expect(page).to have_content(studio1.name)
      expect(page).to have_content(studio1.location)
    end
  end
end
