class PaintingsController < ApplicationController
	  before_action :set_painting, only: [:edit, :show, :update]
  
  def index
  	@paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    if @painting.save
      redirect_to @painting
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def search
    query = params[:q]
    @painting = Painting.find_by_title(query)
    render "show"
  end

  def show
  end

  private

  def painting_params
    params.require('painting').permit(:title, :year, :style, :image)
  end

  def set_painting
    @painting = Painting.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash.now[:notice] = "Invalid Painting ID #{params[:id]}"
    redirect_to root_path
  end
end
