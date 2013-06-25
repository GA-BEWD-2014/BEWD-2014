require 'test_helper'

class ShortCodesTest < ActionDispatch::IntegrationTest
  test "can create short codes" do
    visit root_path
    click_link 'Click here to create a new short link'
    fill_in 'url_link',  with: "http://reddit.com"
    click_button 'Create Url'
    assert page.has_content? "is your code for http://reddit.com"
  end

  test "entering a code redirects you to original url" do
    Url.create link: "http://reddit.com", hash_code: "random_code"
    visit '/random_code'
    assert_equal 'http://reddit.com/', current_url
  end

  test "shows a preview of the page" do 
    Url.create link: "http://reddit.com", hash_code: "random_code"
    visit '/random_code/preview'
    assert page.has_content?('This code will take you to http://reddit.com')
  end
end
