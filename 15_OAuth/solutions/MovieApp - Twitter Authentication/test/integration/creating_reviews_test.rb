require 'test_helper'

class CreatingReviewsTest < ActionDispatch::IntegrationTest
  test "creating reviews" do
    visit root_path
    click_link "Log in with Twitter"
    click_link "The Matrix"
    fill_in "review_post", with: "This movie is awesome"
    click_button "Add review!"
    assert page.has_content?("This movie is awesome")
    click_link "Log out"
  end
end
