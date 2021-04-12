require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'when I visit a studio show page' do
    it "then I see the studio's name and location" do
      studio1 = Studio.create!(name: "Big Movie Studio", location: "Hollywood")
      visit "/studios/#{studio1.id}"

      expect(page).to have_content(studio1.name)
      expect(page).to have_content(studio1.location)
    end

    it "then I see the titles of all of its movies" do
      studio1 = Studio.create!(name: "Big Movie Studio", location: "Hollywood")
      movie1 = studio1.movies.create!(title: "Lord of the Rings", creation_year: 2000, genre: "Action")
      movie2 = studio1.movies.create!(title: "Passengers", creation_year: 2018, genre: "Sci-Fi")
      movie3 = studio1.movies.create!(title: "The Shape of Water", creation_year: 2017, genre: "Drama")
      visit "/studios/#{studio1.id}"

      expect(page).to have_content(movie1.title)
      expect(page).to have_content(movie1.creation_year)
      expect(page).to have_content(movie1.genre)

      expect(page).to have_content(movie2.title)
      expect(page).to have_content(movie2.creation_year)
      expect(page).to have_content(movie2.genre)

      expect(page).to have_content(movie3.title)
      expect(page).to have_content(movie3.creation_year)
      expect(page).to have_content(movie3.genre)
    end
  
  end
end
