require 'test_helper'

class UserTest < ActiveSupport::TestCase
  fixtures :stories, :users, :comments
  test "can have stories" do
    john = users :john
    story = stories :breaking_news
    john.stories << story
    assert john.stories.include? story
  end

  test "user can have many comments" do
    john = users :john
    comment = comments :good
    john.comments << comment
    assert john.comments.include? comment
  end
end
