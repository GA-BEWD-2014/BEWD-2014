class ShirtsController < ApplicationController
  before_action :load_shirt, only: [:edit, :show, :update]

  def index
    @shirts = Shirt.search_for(params[:q])
  end

  def new
    @shirt = Shirt.new
  end

  def create
    @shirt = Shirt.new(safe_shirt_params)
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

  def show
  end

  private

    def safe_shirt_params
      params.require('shirt').permit(:name, :description, :image)
    end

    def load_shirt
      @shirt = Shirt.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      flash.now[:notice] = "Invalid Shirt ID #{params[:id]}"
      redirect_to root_path
    end
end
