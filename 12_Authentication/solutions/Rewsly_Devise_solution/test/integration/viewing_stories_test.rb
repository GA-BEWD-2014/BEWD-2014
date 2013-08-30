require 'test_helper'

class ViewingStoriesTest < ActionDispatch::IntegrationTest
  setup do
    Story.destroy_all
  end

  test "showing welcome message" do
    visit root_path
    assert page.has_content? 'Welcome to Rewsly'
  end

  test "showing stored stories on home page" do 
    story = Story.create title: 'A very interesting story',
      link: 'http://example.com/cool_article',
      upvotes: 1,
      category: 'example.'

    visit root_path
    assert page.has_content? story.title
    assert page.has_content? 'Upvotes: 1'
    assert page.has_content? 'Category: example'
  end

  test "story details are available" do
    story = Story.create title: 'A very interesting story',
      link: 'http://example.com/cool_article',
      upvotes: 1,
      category: 'example.'

    visit root_path

    click_link "Comments"
    assert page.has_content? story.link
  end
end
