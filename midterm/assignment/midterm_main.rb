#require other classes and gems
require_relative 'midterm_access_yelpapi'
require_relative 'midterm_user_input'
require_relative 'midterm_output'

require 'rubygems' #load the rubygems
require 'oauth' #this is a gem that takes care of authentication 
require 'pry'
require 'json'

# access Yelp API
access = AccessYelp.new

# initialize user input
input = UserInput.new

# ask users for search term 
input.search_method
# ask users for city
input.city_method
# define number of search results
input.limit_response_method
# test user inputs
puts "path: #{input.path_method}"

# response contains the value or the body of the API request
response = access.access_token.get(input.path_method).body
# puts response

# initialize output
output = UserOutput.new(response)

#output.all_output(response)
puts "Below are up to #{input.limit_response} matches with #{input.search_term} in #{input.city.gsub("%20", " ")}:" 
output.process_output









