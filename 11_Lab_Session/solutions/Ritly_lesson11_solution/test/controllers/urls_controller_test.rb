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
end
