require 'test_helper'

class StoryTest < ActiveSupport::TestCase
  fixtures :stories, :users, :comments
  setup do
    @story =  stories :breaking_news
  end

  test "invalid if expected field are not provided" do
    assert @story.valid?, "Story should be valid"
    [:title, :link, :category, :upvotes].each do |property|
      original_value = @story[property]
      @story[property] = nil
      assert @story.invalid?, "expected #{property} to be required"
      @story[property] = original_value 
    end
  end

  test "popular scope returns popular stories" do
    popular = Story.create title: 'My popular story', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 4

    Story.create title: 'Unpopular story', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 0

    result = Story.popular
    assert_equal 1, result.length
    assert_equal popular, result.first
  end

  test "recent scope returns recent stories" do
    new_story = Story.create title: 'My popular story', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 1,
      created_at: Date.today


    Story.create title: 'Old story', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 1,
      created_at: 10.days.ago

    results = Story.recent

    assert results.include?(new_story)
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

  test "is associated to a user" do
    john = users :john
    @story.user = john
    assert_equal john.id, @story.user_id
  end

  test "it can have comments" do
    assert @story.comments.empty?
  end

  test "tracks its commenters" do
    john = users :john
    comment = comments :good
    john.comments << comment
    @story.comments << comment
    assert @story.commenters.include? john
  end
end
