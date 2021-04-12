class MoviesController < ApplicationController

  def show
    @studio = Studio.find(params[:id])
  end
end
