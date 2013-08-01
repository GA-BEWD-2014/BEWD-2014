#White House Data Solution

require 'rest-client'
require 'json'

# We will be consuming some data from the White House
# They provide a nice, open JSON feed to gather info about various policies
# To learn more, visit: http://www.whitehouse.gov/developers/policy-snapshots-json-feed

# The feed format is: http://www.whitehouse.gov/facts/json/<TYPE>/<CATEGORY>
# As you can see, it accepts two arguments:
#   Type (ex. "whatsnext", "progress", or "all")
#   Category (ex. "economy", "health%20care", or "all")

# Choose a Type
type = "progress"

# Choose a category
category = "economy"

# Use rest-client to make a RESTful web request for us
# Side note: REST is simply a way to structure your web service so that is clean and standardized
#            To learn more about REST, investigate 'what makes a web service RESTful'
posts_in_json = RestClient.get("http://www.whitehouse.gov/facts/json/#{type}/#{category}")

# Have the JSON library load it into a hash for us
posts = JSON.load(posts_in_json)

# # Use our code from the collection management code along to show our fresh tweets!
posts.each do |post|
  puts
  puts "#{post["url_title"].capitalize} - #{post["url"]}"
  puts "----------------------------------------"
  puts "#{post["body"]}"
  puts
end

# # The #map method can be used to iterate as well.
# # Any operation run on an element will be returned.
# posts.map do |post|
#   "Post from #{post['url']}: #{post['url_title']}"
# end


