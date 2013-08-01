require 'test_helper'

class OauthTest < ActionDispatch::IntegrationTest
  test "the truth" do
    visit root_path
    click_link "Log in with Twitter"
    assert_equal '/', page.current_path
    click_link "Log out"
    assert_equal '/', page.current_path
    assert page.has_content?("Log in with Twitter")
  end
end
