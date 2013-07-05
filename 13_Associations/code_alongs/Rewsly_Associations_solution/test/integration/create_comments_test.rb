require 'test_helper'

class CreateCommentsTest < ActionDispatch::IntegrationTest
  test "adding comments on stories" do
    sign_in_user
    create_story "Test Story"
    fill_in :comment_post, with: "I'm a comment!"
    click_button "Create Comment"
    assert page.has_content? "I'm a comment!"
  end
end
