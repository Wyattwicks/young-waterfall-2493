class ActorsController < ApplicationController

  def create
    @movie = Movie.find(params[:id])
    actor = Actor.new(params[:name])
    actor.save
    redirect_to "/movies/#{@movie.id}"
  end

end
