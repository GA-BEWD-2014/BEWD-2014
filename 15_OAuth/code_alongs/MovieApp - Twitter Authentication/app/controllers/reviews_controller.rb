class ReviewsController < ApplicationController
  before_action :current_user, only: :create
  def create
    if current_user
      safe_review = params.require(:review).permit(:post, :movie_id)
      review = current_user.reviews.create(safe_review)
      redirect_to review.movie
    else
      redirect_to root_path, notice: "You must be logged in to create reviews"
    end
  end
end
