class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    safe_user = params.require(:user).permit(:name, :phone)
    User.create(safe_user)
    redirect_to root_path
  end
end
