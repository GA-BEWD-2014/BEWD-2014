#Iterating Over Collections
#TIME: 45 min
#Objectives: 
# => This exercise pulls data from the White House and brings a practical approach to how hashes and arrays are useful in Rails!
# => Before coding this exercise, it is helpful to work in irb and work with data is returned from the White House.

# => Task Instructions
# The White House provides a nice open JSON feed to gather info about various policies.
# 		To learn more, visit: http://www.whitehouse.gov/developers/policy-snapshots-json-feed

# Their feed format is: http://www.whitehouse.gov/facts/json/<TYPE>/<CATEGORY>
# As you can see, it accepts two arguments:
#   Type (ex. "whatsnext", "progress", or "all")
#   Category (ex. "economy", "health%20care", or "all")
# Using the feed format, pull White House data and format the returned JSON so that the user can clearly see a list of post. 

# => Here is an example of a formatted post: 
#  The card act - http://www.whitehouse.gov/blog/A-New-Era-for-Credit-Cards/
#  ----------------------------------------
#  Outlawed unfair and deceptive credit card practices, such as retroactive rate increases and charging fees without clearly disclosing them first.


require 'rest-client' #So you wouldn't forget, we incuded the necessary require statements.
require 'json'





