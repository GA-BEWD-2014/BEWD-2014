require 'test_helper'

class ClassifiedsControllerTest < ActionController::TestCase
  test "creating a classified" do
    params = {
      category: "space", 
      classified: {
        title: "One way ticket to Europa!", 
        description: "Ever wanted to get away? Come visit Europa!", 
        price: "10000000"
      }
    }
    post :create, params
    classified = assigns(:classified)
    assert_equal "Space", classified.category.name
    assert_equal "One way ticket to Europa!", classified.title
    assert_redirected_to classified
  end
end
