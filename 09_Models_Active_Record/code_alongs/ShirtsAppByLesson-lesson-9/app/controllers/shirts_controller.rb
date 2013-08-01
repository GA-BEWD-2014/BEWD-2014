class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
  end
end
