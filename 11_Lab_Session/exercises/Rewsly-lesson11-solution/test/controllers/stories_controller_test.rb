require 'test_helper'

class StoriesControllerTest < ActionController::TestCase
  test "redirect back to new form if record is invalid" do
    post :create, story: {title: "foo"}
    assert_template :new
  end

  test "sets upvote value on story creation" do 
    post :create, story: {
      title: "My story", 
      link: "http://example.com",
      category: "example"
    }

    assert_equal 1, assigns(:story).upvotes
  end
end
