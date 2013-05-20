################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Putting it all together.
# Learning Objective: Apply loops to iterate through collections of data.
# 
#
################################################################################
#Magic eight ball 

responses = Hash.new

responses[:positive] =  [ "It is certain", "It is decidedly so",
                          "Without a doubt", "Yes - definitely",
                          "You may rely on it", "As I see it, yes",
                          "Most likely", "Outlook good", "Yes",
                          "Signs point to yes" ]

responses[:neutral] =  [ "Reply hazy, try again", "Ask again later",
                         "Better not tell you now", "Cannot predict now",
                         "Concentrate and ask again" ]

responses[:negative] = [ "Don't count on it", "My reply is no",
                         "My sources say no", "Outlook not so good",
                         "Very doubtful" ]

# 1. Create a loop that counts down from 4 using `loop do` and prints
#    a value from responses[:negative]. Use a `count` variable to index the array. 
#     The loop should break when count is below 1.

puts "Problem 1:"

count = 4
loop do
  print "#{responses[:negative][count]} "
  count -= 1
  break if count < 1
end

# 2. Translate Problem 1 below to use `while` instead of `loop`.

puts "\n\nProblem 2:"

count = 4
while count > 0 do
  print "#{responses[:negative][count]} "
  count -= 1
end

# 3. Translate the loop to use `until`.

puts "\n\nProblem 3:"

count = 4
until count == 0 do
  print "#{responses[:negative][count]} "
  count -= 1
end

# 4. Translate the loop to use `times` to iterate 3 times.

puts "\n\nProblem 4:"

3.times do |count|
  print "#{responses[:negative][count]} "
end

# 5. Translate the loop to use a range from 0 to 4

puts "\n\nProblem 5:"

(0..4).each do |count|
  print "#{responses[:negative][count]} "
end

# 6. Create a new loop using the `.each` method to iterate over each
#    value in the `responses[:neutral]` Array to print each String to
#    the screen.

puts "\n\nProblem 6:"

responses[:neutral].each do |response|
  print "#{response} "
end

# 7. You can also loop through Hashes. Loop through our `responses`
#    hash, printing each Array to the screen.

puts "\n\nProblem 7:"

responses.each do |response_type, response_array|
  puts "Response type: #{response_type}"
  puts "Response values: #{response_array}"
end

# 8. Finally, iterate over both the Hash and then Array of that key so
#    that you individually print out each value of the Array.

puts "\n\nProblem 8:"

responses.each do |response_type, response_array|
  puts "\nResponse type: #{response_type}"
  response_array.each do |response|
    print "#{response} "
  end
end

