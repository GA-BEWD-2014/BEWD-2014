require 'test_helper'

class UserCreationAndLoggingInTest < ActionDispatch::IntegrationTest
  test "account creation" do
    visit root_path
    click_link "Sign up"
    fill_in 'Email', with: "james.doe@example.com"
    fill_in 'Password', with: "secret12"
    fill_in 'Password confirmation', with: "secret12"
    click_button "Sign up"
    assert_equal '/',  current_path
    assert page.has_content?('Welcome! You have signed up successfully.')
    assert page.has_content?('Sign out')
  end

  test "logging in" do
    User.create(email: "johanna.doe@example.com", password: "secret12", password_confirmation: "secret12")
    visit root_path
    click_link "Sign in"
    fill_in 'Email', with: 'johanna.doe@example.com'
    fill_in 'Password', with: 'secret12'
    
    click_button "Sign in"
    assert_equal '/',  current_path
    assert page.has_content?('Signed in successfully.')
    assert page.has_content?('Sign out')
  end

  test "logging out" do
    User.create(email: "johanna.doe@example.com", password: "secret12", password_confirmation: "secret12")
    visit root_path
    click_link "Sign in"
    fill_in 'Email', with: 'johanna.doe@example.com'
    fill_in 'Password', with: 'secret12'
    
    click_button "Sign in"

    click_link "Sign out"
    assert_equal '/',  current_path
    assert page.has_content?('Sign in')
  end
end
