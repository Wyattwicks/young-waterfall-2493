class StudiosController < ApplicationController

  def show
    @studio = Studio.find(params[:id])
    @actors = Actor.order(age: params[:sort])
  end
end
