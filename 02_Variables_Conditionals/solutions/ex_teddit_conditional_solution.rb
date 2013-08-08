# Use your completed version of Teddit strings. 
# Or Copy the code from the strings_exercise_SN_solution.rb. This is your start point.
#
# New Teddit Feature! If the Story is about cats multiply the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# If the Story is about Food it gets 3 times the upvotes.

#For example:
# "Cats frolic despite tuna shortage" should give you 5 times the upvotes!

def get_input
  gets.strip 
end

def calculate_upvotes(story, category)
  upvotes = 1

  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *=8
  end

  if category.downcase == "food"
    upvotes *= 3
  end
  upvotes
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
