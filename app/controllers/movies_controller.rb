#This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    if (params.has_key?(:title_header))
      @movies = Movie.find(:all, :order => :title)
    elsif (params.has_key?(:release_date_header))
      @movies = Movie.find(:all, :order => :release_date)
    else
      @movies = Movie.all
    end
  end
  def show
    id = params[:id] #retrieve movie ID from URI - route
    @movie = Movie.find_by_id(id)
    #@movie = Movie.find(id)
    # will render app/views/movies/show.html.haml by default
  end
  
  def new
    # default: render 'new' template
  end
  
  def create
    #debugger
    @movie = Movie.create!(params[:movie])
    flash[:notice] = " #{@movie.title} was successfully created"
    #redirect_to_movies_path
    redirect_to movies_path
  end
  
  def edit
    @movie = Movie.find_by_id params[:id]
  end
  
  def update
    @movie = Movie.find_by_id params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie) # with a space between redirect_to and movie_path
    #redirect_to_movie_path(@movie)
    #redirect_to movie_path(@movie)
    
  end
  
  def destroy
    @movie = Movie.find_by_id(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted"
    redirect_to movies_path
  end
end
