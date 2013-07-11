require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  test "creates a review based on the logged in user" do
    john = users(:john)
    session[:user_id] = john.id

    the_matrix = movies(:matrix)
    post :create, review: {post: "great movie", 
                            movie_id: the_matrix.id}
    assert_equal 1, the_matrix.reviews.count
    assert_equal 1, john.reviews.count
    assert_redirected_to the_matrix
  end

  test "reviews require they be logged in" do
    the_matrix = movies(:matrix)
    post :create, review: {post: "great movie", 
                            movie_id: the_matrix.id}
    assert_equal 0, the_matrix.reviews.count
    assert_redirected_to root_path
    assert_equal "You must be logged in to create reviews", flash[:notice]
  end
end
