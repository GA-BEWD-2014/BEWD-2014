require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "logs user in using omniauth credentials" do
    @controller.env['omniauth.auth'] = OmniAuth::auth_hash
    get :create
    user = assigns(:user)
    assert_equal '1', user.uid 
    assert_equal 'Ritter', user.provider 
    assert_redirected_to root_path
  end

  test "clears user session" do
    session[:user_id] = "logged in"
    delete :destroy
    assert_nil session[:user_id]
    assert_redirected_to root_path
  end
end
