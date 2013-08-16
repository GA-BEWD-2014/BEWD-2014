require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "gets redirected if they're logged in" do
    sign_in users(:john)
    get :index
    assert_redirected_to classifieds_path
  end

end
