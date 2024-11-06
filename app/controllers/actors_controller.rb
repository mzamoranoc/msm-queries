class ActorsController < ApplicationController
  def index
    # Logic to retrieve all actors
    @actors = Actor.all

    render({ :template => "actors_templates/index" })
  end

  def show
    # Logic to retrieve a specific actor by ID
    @actor = Actor.find(params[:the_id])

    render({ :template => "actors_templates/show" })
  end
end
