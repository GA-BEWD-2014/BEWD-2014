require 'test_helper'

class UrlsControllerTest < ActionController::TestCase
  test "redirects to home page if bad code given on preview" do
    get :preview, some_totally_random_value: "not real"
    assert_redirected_to root_path
  end

  test "redirects to home page if bad code given on redirector" do 
    get :redirector, some_totally_random_value: "not real"
    assert_redirected_to root_path
  end

  test "redirects to home page on link creation attempt if not logged in" do
    get :new
    assert_redirected_to new_user_session_path

    post :create
    assert_redirected_to new_user_session_path
  end

  test "logged in user can create links" do
    sign_in users(:john)
    get :new
    assert_template :new
  end
end
