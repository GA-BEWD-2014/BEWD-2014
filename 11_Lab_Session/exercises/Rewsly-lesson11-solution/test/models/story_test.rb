require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  test "invalid if expected field are not provided" do
    story = Story.new title: 'My title', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 1

    assert story.valid?, "Story should be valid"
    [:title, :link, :category, :upvotes].each do |property|
      original_value = story[property]
      story[property] = nil
      assert story.invalid?, "expected #{property} to be required"
      story[property] = original_value 
    end
  end

  test "popular scope returns popular stories" do
    popular = Story.create title: 'My popular story', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 4

    unpopular = Story.create title: 'My title', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 0

    result = Story.popular
    assert_equal 1, result.length
    assert_equal "My popular story", result.first.title
  end

  test "recent scope returns recent stories" do
    new_story = Story.create title: 'My popular story', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 1,
      created_at: Date.today
     

    old_story = Story.create title: 'My title', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 1,
      created_at: 10.days.ago

    result = Story.recent

    assert_equal 1, result.length
  end

  test "search functionality" do
    Story.create title: 'My title', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 1

    Story.create title: 'not very interesting', 
      link: 'http://hopefullynotarealurl.com', 
      category: 'flim flams',
      upvotes: 1

    assert_equal 1, Story.search_for("title").length
    assert_equal 1, Story.search_for("example").length
  end
end
