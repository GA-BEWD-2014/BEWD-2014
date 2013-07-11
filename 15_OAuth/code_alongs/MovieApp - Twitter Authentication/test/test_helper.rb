ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'

OmniAuth.config.test_mode = true

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  # Make the Capybara DSL available in all integration tests
  include Capybara::DSL
end

module OmniAuth
  def self.auth_hash
    OmniAuth::AuthHash.new(
    {uid: '1', 
     provider: 'Ritter', 
     info: {
       nickname: "JonDoe"
     }, 
     credentials: {
       token: "token", 
       secret: "secret"
     }
    })
  end
end

OmniAuth.config.mock_auth[:twitter] = OmniAuth::auth_hash
