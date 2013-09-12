class PaintingsController < ApplicationController
	  before_action :load_painting, only: [:edit, :show, :update]

  def index
  	@paintings = params[:q] ? Painting.search_for(params[:q]) : Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(safe_painting_params)
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

  def show
  end

  private

  def safe_painting_params
    params.require('painting').permit(:title, :year, :style, :image)
  end

  def load_painting
    @painting = Painting.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash.now[:notice] = "Invalid Painting ID #{params[:id]}"
    redirect_to root_path
  end
end
