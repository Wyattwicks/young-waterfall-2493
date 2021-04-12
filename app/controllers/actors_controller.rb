class ActorsController < ApplicationController

  def create
    @movie = Movie.find(params[:id])
    @actor = Actor.new(actor_params)
    @actor.save
    MovieActor.create(actor_id: params[@actor.id], movie_id: [@movie.id])
    redirect_to "/movies/#{@movie.id}"
  end

  private
  def actor_params
    defaults = {age: 30}
    params.permit(:name, :age)
  end

end
