class MuseumsController < ApplicationController
  def index
  	@museums = Museum.all
  end

  def show
  	@museum = Museum.find(params[:id])
  end

end
 