#Teddit -  Methods
#Time: 10 min
#Students file start with version 4 from teddit_strings.

#Adding methods
###########
###########

def show_title(title)
  puts title
end
#
def show_story(story, upvotes)
  puts "Story: #{story.capitalize} Current upvotes: #{upvotes}"
end
#
show_title("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
#
story1 = "Cat makes fortune by showing elderly how to play dice"
story1_upvotes = 7
#
story2 = "Man raise by wolverines, then eaten"
story2_upvotes = 4
#
show_story(story1, story1_upvotes)
show_story(story2, story2_upvotes)