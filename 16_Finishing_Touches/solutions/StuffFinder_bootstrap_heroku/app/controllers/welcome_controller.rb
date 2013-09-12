class WelcomeController < ApplicationController
  before_action :redirect_if_logged_in

  def index
    @categories = Category.all
  end

  private

  def redirect_if_logged_in
    if user_signed_in?
      redirect_to classifieds_path
    end
  end
end
