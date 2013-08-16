ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  # fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
end
class ActionController::TestCase
  include Devise::TestHelpers
end

def sign_in_user
  User.create(email: "johanna.doe@example.com", password: "secret12", password_confirmation: "secret12")
  visit root_path
  click_link "Sign in"
  fill_in 'Email', with: 'johanna.doe@example.com'
  fill_in 'Password', with: 'secret12'

  click_button "Sign in"
end

