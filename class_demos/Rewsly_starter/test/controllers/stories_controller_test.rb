require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  fixtures :users
  test "redirect back to new form if record is invalid" do
    sign_in users(:john)
    post :create, story: {title: "foo"}
    assert_template :new
  end

  test "sets upvote value on story creation" do 
    sign_in users(:john)
    post :create, story: {
      title: "My story", 
      link: "http://example.com",
      category: "example"
    }

    assert_equal 1, assigns(:story).upvotes
  end
  test "redirects to home page on story creation attempt if not logged in" do
    get :new
    assert_redirected_to new_user_session_path

    post :create
    assert_redirected_to new_user_session_path
  end

  test "logged in user can submit stories" do
    sign_in users(:john)
    get :new
    assert_template :new
  end

end
