require 'rails_helper'

RSpec.describe 'As a visitor' do
  describe 'when I visit a movie show page' do
    it "shows a movies genre, title, creation year, and actors" do
      studio1 = Studio.create!(name: "Big Movie Studio", location: "Hollywood")
      movie1 = studio1.movies.create!(title: "Lord of the Rings", creation_year: 2000, genre: "Action")
      actor1 = studio1.actors.create!(name: "Vigo Mortison", age: 40)
      # movieactor1 = MovieActor.create!(actor_id: actor1.id, movie_id: movie1.id)
      visit "/movies/#{movie1.id}"

      expect(page).to have_content(movie1.title)
      expect(page).to have_content(movie1.creation_year)
      expect(page).to have_content(movie1.genre)
      expect(page).to have_content(movie1.actors.name)
    end
  end
end
