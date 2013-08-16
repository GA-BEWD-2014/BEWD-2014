require 'test_helper'

class CreatingStoriesTest < ActionDispatch::IntegrationTest
  setup do
    Story.destroy_all
  end

  test "creating new stories" do
    sign_in_user
    visit root_path
    click_link "Add a new story"
    fill_in 'Title', with: "My Title"
    fill_in 'Link', with: "http://example.com"
    fill_in 'Category', with: "example"
    click_button 'Create Story'
    assert page.has_content? 'My Title'
    assert page.has_content? 'http://example.com'
    assert page.current_path =~ /\/stories\/\d/
  end

  test "shows errors if validation fails" do 
    sign_in_user
    visit root_path
    click_link "Add a new story"
    click_button 'Create Story'
    assert page.has_content? "errors"
  end
end
