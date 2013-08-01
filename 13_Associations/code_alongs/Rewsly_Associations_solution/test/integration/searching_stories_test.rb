require 'test_helper'

class SearchingStoriesTest < ActionDispatch::IntegrationTest
  test "Search returns stories" do
    Story.create title: 'My story', 
      link: 'http://example.com', 
      category: 'example',
      upvotes: 1

    visit root_path
    fill_in "q", with: "My story"
    click_button "Search"

    assert page.has_content?('Results')
    assert page.has_content?('My story')
  end
end
