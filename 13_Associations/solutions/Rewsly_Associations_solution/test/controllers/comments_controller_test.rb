require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  fixtures :users, :stories
  test "creates user can post comments on story" do
    john = users :john
    sign_in john
    story = stories :breaking_news

    post :create, story_id: story.id, comment: {post: "I'm a comment"}

    comment = assigns(:comment)
    assert_equal john, comment.user
    assert_equal story, comment.story
    assert_redirected_to story
  end

  test "only authenticated users can post comments" do
    story = stories :breaking_news
    post :create, story_id: story.id, comment: {
      post: "I'm a comment",
      story_id: story.id,
    }

    assert_nil assigns(:comment)
    assert_redirected_to root_path
    assert_equal "Only logged in users can create comments", flash.alert
  end
end
