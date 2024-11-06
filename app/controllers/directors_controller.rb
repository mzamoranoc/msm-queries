class DirectorsController < ApplicationController
  def index
    # Logic to retrieve all directors, if needed
    @directors = Director.all

    render({ :template => "directors_templates/index" })
  end

  def show
    # Logic to retrieve a specific director by ID
    @director = Director.find(params[:the_id])

    render({ :template => "directors_templates/show" })
  end

  def youngest
    # Logic to find the youngest director
    @the_youngest_director = Director.where.not({ :dob => nil }).order({ :dob => :desc }).first

    render({ :template => "directors_templates/youngest" })
  end

  def eldest
    # Logic to find the eldest director
    @the_eldest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first

    render({ :template => "directors_templates/eldest" })
  end
end
