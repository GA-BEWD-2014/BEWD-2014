################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise Hashes
# Learning Objective: Introduce hashes and ruby syntax.
# 					  This is a code along activity, a working example of hashes. 
# 					  Complete one step and preview result in console.
#
################################################################################
 
# 1. Create a hash named states comprised of three state names, including New York, and their abbreviations
states = { "Oregon"=>"OR", "Montana"=>"MT", "New York"=>"NY" }
 
# 2. Create second hash named request using url and ip as key names
request = { 
	url:"http://generalassemb.ly",
	ip:"127.0.0.1"
}

# 3. Display the url in the request hash
puts request[:ip]

# 4. Display the abbreviation for New York
puts states["New York"]

# 5. Display whether the states hash contains the abbreviation NY
puts states.has_value?("NY")