class ClassifiedsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def new
    @classified = Classified.new
  end

  def create
    safe_classified = params.require(:classified).permit(:title, :description, :price)
    @classified = current_user.classifieds.new safe_classified
    @classified.category = Category.from_params params[:category]
    @classified.save
    redirect_to @classified
  end

  def show
    @classified = Classified.find params[:id]
  end
end
