# First we require rest-client and json
require 'rest-client'
require 'json'

# Collect some user input
puts "Enter your search:"
search = gets.chomp.gsub(" ", "%20")
# Use rest-client to get the page for us
tweets_as_json = RestClient.get("http://search.twitter.com/search.json?q=#{search}")
# Have the JSON library load it into a has for us
tweets = JSON.load(tweets_as_json)

# # Use our code from the collection management code along to show our fresh tweets!
tweets["results"].each do |tweet|
  puts "Tweet from #{tweet['from_user']}: #{tweet['text']}"
end

# # The #map method can be used to iterate as well.
# # Any operation run on an element will be returned.
# tweets["results"].map do |tweet|
#   "Tweet from #{tweet['from_user']}: #{tweet['text']}"
# end


