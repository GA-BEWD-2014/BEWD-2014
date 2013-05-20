#Teddit -  Methods
#Time: 10 min
##Teddit is a Ruby text based news aggregator. Think Reddit in your terminal.
#This exercise will be used throughout the ruby portion of this course. 
#Each lesson we will incrementally build a news aggregator. 
#First we will hard code stories into the code.
#Eventually we will create a more dynamic Teddit, and pull the latest news stories from Mashable, Digg and Reddit. 


#Methods and variables
###########
###########
#

def show_story(story, upvotes)
  puts story
  puts upvotes
end
#
#
story1 = "Cat makes fortune by showing elderly how to play dice"
story1_upvotes = 7
#
story2 = "Man raise by wolverines, then eaten"
story2_upvotes = 4
#
show_story(story1, story1_upvotes)
show_story(story2, story2_upvotes)