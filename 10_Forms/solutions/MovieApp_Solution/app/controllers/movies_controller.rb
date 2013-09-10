class MoviesController < ApplicationController
  before_action :load_movie, only: [:update, :edit, :show]

  def index
    @movies = Movie.search_for(params[:q])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new safe_movie_params

    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @movie.update(safe_movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  def show
  end

  private

    def load_movie
      @movie = Movie.find params[:id]
    end

    def safe_movie_params
      params.require(:movie).permit(:title, :description, :year_released, :rating)
    end
end
