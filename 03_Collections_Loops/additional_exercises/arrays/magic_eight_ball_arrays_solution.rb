################################################################################
#
# Introduction to Ruby on Rails
# Note: This is a cumulative example. 

# Exercise ex_arrays_solution.rb
# Learning Objective: Practice knowledge of arrays syntax.
# Prerequisite => a code along that introduced arrays
################################################################################

# We are going to begin to create a "Magic 8-Ball" program! It will provide a random response 
# to users. First we need to populate the array with possible responses and practice outputting responses to the user.
#
# 1. Begin by creating a simple array called `responses` that holds these
#    three String values:
#
#    - "It is certain"
#    - "Reply hazy, try again"
#    - "Don't count on it"

responses = [ "It is certain", "Reply hazy, try again", "Don't count on it" ]

# 2. Print to the screen, "Your answer is:" and print the second value
#    of the Array as well.

puts "Your answer is: #{responses[1]}"

# 3. Add three more values to your `responses` Array by using `push` method.
#
#    - "It is decidedly so"
#    - "Ask again later"
#    - "My reply is no"
#
#    Print the entire array to the screen to see what your array
#    looks like.
#
#    puts "\nResponses: #{responses.to_s}"

responses = responses.push("It is decidedly so")
responses = responses.push("Ask again later")
responses = responses.push("My reply is no")

puts "\nResponses: #{responses.to_s}"

# 4. Remove the first value from your Array ("It is certain") using
#    shift method and print your Array again. 

responses.shift

puts "\nResponses: #{responses.to_s}"

# 5. Add a new item to the front of your Array by using the `unshift`
#    method.
#
#    - "As I see it, yes"
#
#    And print your Array one more time to make sure it's correct!

responses.unshift("As I see it, yes")

puts "\nResponses: #{responses.to_s}"
