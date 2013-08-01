#TEDDIT:  Strings
#TIME: 15 min
#INSTRUCTIONAL DESIGN NOTES: 
# => We take an incremental approach so students can build on their understanding of strings.
# => Each version below, adds complexity to Teddit. Comment out each version before running the next.


#Version 1 - Welcome the user to Teddit, print the first story to the terminal.
###########
###########
# 
# puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
# puts 'Story: Man raised by wolverines, then eaten Current upvotes: 4'


#Version 2 - Replace the story title and upvotes with variables.
###########
###########
##Swap out the story and upvotes for variables
##Show casting error
#
#puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
#puts 'Story: Man raised by wolverines, then eaten Current upvotes: 4'
#
#story = 'Cat makes fortune by showing elderly how to play dice'
#upvotes = 7
#puts 'Story: ' + story
#puts 'Story: ' + story + ' Current upvotes: ' + upvotes

#Woot error!
#Talk about mixing type and casting. Numbers have methods so we can call #to_s


#Version 3 - Add data type casting (fix casting issue).
###########
###########
##Fix casting issue
#
#puts 'Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!'
#puts 'Story: Man raised by wolverines, then eaten Current upvotes: 4'
#
#story = 'Cat makes fortune by showing elderly how to play dice'
#upvotes = 7
#puts 'Story: ' + story + ' Current upvotes: ' + upvotes.to_s


#Version 4 - Use string interpolation and escape characters, polish the output.
###########
###########
##Remove need to escape single quotes by using Double quoted strings
##Introduce Interpolation
##Introduce \n and \t
#
#puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
#puts "Story: Man raised by wolverines, then eaten Current upvotes: 4"
#
#story = "Cat makes fortune by showing elderly how to play dice"
#upvotes = 7
#puts "Story: #{story.capitalize} \nCurrent upvotes: \t#{upvotes}"

# #Version 5 - Adding methods
# ##########
# ##########
# def create_stories
#   story1 = "Cat makes fortune by showing elderly how to play dice"
# end

# def format_story(story, upvotes)
#   formated_story = "Story: #{story.capitalize} Current upvotes: #{upvotes}"
# end

# puts "Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!"


# puts show_story(create_stories, 4)


#Version 6 - Gettin Input From Users & returning values.
# ##########
# ##########

# def generate_story
# 	"Cat makes fortune by showing elderly how to play dice"
# end

# def get_upvotes
#   puts "How many upvotes do you want to give this story?"
#   add_upvotes
# end

# def add_upvotes
#   gets.strip 
# end

# def format_story(story, upvotes)
#   "Story: #{story.capitalize} Current upvotes: #{upvotes}"
# end

# puts "Welcome to Teddit! A text based news aggregator. Get today's news tomorrow!"

# story = generate_story
# puts story
# upvotes = get_upvotes
# puts format_story(story, upvotes)


