#Fill in the blanks. The assert_equal method is a test, please ignore.

def assert_equal(expected, actual)
  unless expected == actual
    abort "Expected #{expected} to match #{actual} on line #{caller.first.split(":")[1]}"
  end
end

def ___(*arguments)
  abort  "You have to fill in the blank on line #{caller.first.split(":")[1]}".center(100, "*")
end

# Create an empty array named categories using a literal
categories = ___
assert_equal categories, []

# Create an empty array named categories using Array's #new method
categories = ___
assert_equal categories, []

# Add 3 stories to the categories array. Each time using a different method.
categories.___("Music")
categories.___("Weather")
categories.___("Florida")
assert_equal ["Florida", "Music", "Weather"], categories.sort

# Ensure only unique categories get stored
categories << "Florida"
categories.___!
assert_equal ["Florida", "Music", "Weather"], categories.sort

# Write a conditional that adds "Family" to the category list if it includes both Animals, and Shopping
categories << "Animals" 

if ___
  categories << "Family" 
end

assert_equal(false, categories.include?("Family"))

categories << "Shopping" 

#repeat check here
if ___
  categories << "Family" 
end

assert_equal(true, categories.include?("Family"))

# Print all of the Array elements as a comma separated string in alphabetical order
# persist the sorting of categories 
assert_equal("Animals, Family, Florida, Music, Shopping, Weather", categories.___.___)
assert_equal(%w(Animals Family Florida Music Shopping Weather), categories)

# Remove the first category from the array and print it to the screen "First Category: Category here"
first_category = categories.___
assert_equal("First Category: Animals", "First Category: #{first_category}")
assert_equal(5, categories.___) # get it's length

# Remove the newest category from the array, print it to the screen "Last Category: Category here"

last_category = categories.___
assert_equal("Last Category: Weather", "Last Category: #{last_category}")
assert_equal(4, categories.___) # get it's length

# Write a conditional that clears the array if there are more than 5 categories and adds "Misc" to it.

if categories.___ > 5 #get it's length
  categories.___ # empty the array
  categories << "Misc"
end

assert_equal(4, categories.___) # get it's length

categories << "Medicine"
categories << "Physics" 

if categories.___ > 5 #get it's length
  categories.___ # empty the array
  categories << "Misc"
end

assert_equal(1, categories.___) # get it's size
assert_equal(["Misc"], categories)

puts "YOU'RE DONE!"
