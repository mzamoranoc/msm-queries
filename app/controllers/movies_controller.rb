class MoviesController < ApplicationController
  def index
    # Logic to retrieve all movies
    @movies = Movie.all

    render({ :template => "movies_templates/index" })
  end

  def show
    # Logic to retrieve a specific movie by ID
    @movie = Movie.find(params[:the_id])

    render({ :template => "movies_templates/show" })
  end
end
