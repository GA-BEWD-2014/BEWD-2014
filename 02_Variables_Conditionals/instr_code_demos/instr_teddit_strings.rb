#TEDDIT:  Strings - Instructor's File
#TIME: 15 min
#INSTRUCTIONAL DESIGN NOTES:
# => The code below is seperated into versions. Each version adds complexity. We suggest you build and run one version at a time.
# => We want students to build on their understanding of strings. As you code each version below, further explain strings.


#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########
#
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Story: Man raised by wolverines, then eaten Current upvotes: 4"

#Version 2 - Replace the story title and upvotes with variables.
###########
###########
##Swap out the story and upvotes for variables
##Show casting error
#
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Story: Man raised by wolverines, then eaten Current upvotes: 4"

story = "Cat makes fortune by showing elderly how to play dice"
upvotes = 7
puts "Story: " + story
puts "Story: " + story + " Current upvotes: " + upvotes

#Uh oh! error!
#Talk about mixing type and casting. Numbers have methods so we can call #to_s


#Version 3 - Add data type casting (fix casting issue).
###########
###########
##Fix casting issue
#
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Story: Man raised by wolverines, then eaten Current upvotes: 4"
#
story = "Cat makes fortune by showing elderly how to play dice"
upvotes = 7
puts "Story: " + story + " Current upvotes: " + upvotes.to_s


#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########
##Introduce Interpolation
##Introduce \n and \t
#
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Story: Man raised by wolverines, then eaten Current upvotes: 4"
#
story = "cat makes fortune by showing elderly how to play dice"
upvotes = 7
puts "Story: #{story.capitalize} \nCurrent upvotes: \t#{upvotes}"

# #Version 5 - Adding methods
# ##########
# ##########
def print_welcome
  puts "Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!"
end

def headline
   "Cat makes fortune by showing elderly how to play dice"
end

def story_stats(story, upvotes)
   formated_story = "Story: #{story.capitalize} Current upvotes: #{upvotes}"
end

print_welcome
puts story_stats(headline, 4)


#Version 6 - Gettin Input From Users & returning values.
# ##########
# ##########
# Make sure to explain things like 'gets.strip'

def print_welcome
  puts "Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!"
end

def headline
 	"Cat makes fortune by showing elderly how to play dice"
end

def get_upvotes
   puts "How many upvotes do you want to give this story?"
   gets
end

def story_stats(story, upvotes)
  "Story: #{story}, Current upvotes: #{upvotes}"
end

print_welcome

story = headline
puts story

upvotes = get_upvotes
upvotes = upvotes.strip

formatted_story = format_story(story, upvotes)

puts formatted_story

#Version 7 - Optimize...
# ##########
# ##########

def print_welcome
  puts "Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!"
end

def headline
  "Cat makes fortune by showing elderly how to play dice"
end

def get_upvotes
   puts "How many upvotes do you want to give this story?"
   gets.strip
end

def story_stats(story, upvotes)
  "Story: #{story}, Current upvotes: #{upvotes}"
end

print_welcome
puts headline
puts story_stats(headline, get_upvotes)

