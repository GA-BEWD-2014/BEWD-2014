class ShirtsController < ApplicationController
  before_action :set_shirt, only: [:edit, :show, :update]

  def index
    @shirts = Shirt.all
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
  end

  def update
    @shirt.update shirt_params
    redirect_to @shirt
  end

  def search
    query = params[:q]
    @shirts = Shirt.search_for(query)
  end

  def show
  end

  private

  def shirt_params
    params.require('shirt').permit(:name, :description, :image)
  end

  def set_shirt
    @shirt = Shirt.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash.now[:notice] = "Invalid Shirt ID #{params[:id]}"
    redirect_to root_path
  end
end
