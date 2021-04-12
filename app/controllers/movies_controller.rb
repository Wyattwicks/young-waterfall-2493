class MoviesController < ApplicationController

  def show
    # @studio = Studio.find(params[:id])
    @movie = Movie.find(params[:id])
  end
end
