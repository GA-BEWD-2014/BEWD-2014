class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.search_for(params[:q])
  end

  def show
    @shirt = Shirt.find(params[:id])
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(shirt_params)
    if @shirt.save
        redirect_to @shirt
    else
        render 'new'
    end
  end

  def edit
    @shirt = Shirt.find(params[:id])
  end

  def update
    @shirt = Shirt.find(params[:id])
    @shirt.update shirt_params
    redirect_to @shirt
  end

  private
    def shirt_params
        params.require('shirt').permit(:name, :description, :image)
    end
end
