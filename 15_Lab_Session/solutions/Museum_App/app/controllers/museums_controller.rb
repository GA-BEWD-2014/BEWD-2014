class MuseumsController < ApplicationController
	

  def index
  	@museums = Museum.all
  end

  def show
  	@museum = Museum.find(params[:id])
  end

  def new
    @museum = Museum.new
  end

  def create
    @museum = Museum.new(safe_museum_params)
    if @museum.save
      redirect_to @museum
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  private

  def safe_museum_params
    params.require('museum').permit(:name, :city)
  end

end
 