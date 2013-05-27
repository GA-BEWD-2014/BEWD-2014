require_relative 'lib/story' #creates a link to the Story class.
require_relative 'lib/story_board' #creates a link to the StoryBoard class.
require_relative 'lib/remote_source' #creates a link to RemoteSource class

def show_message(message)
  puts message
end

def get_input
  gets.chomp 
end

def get_choice
  gets.to_i
end

def show_menu
  show_message "Would you like to:"
  show_message "1. Get stories from Mashable"
  show_message "2. Add your own story"
  show_message "3. Exit"
end

def add_remote_stories
  RemoteSource.get.each do |story|
    StoryBoard.add_story story #adds story to an array of stories.
  end
end

def add_manual_stories
  show_message("Please enter a News story:")
  title = get_input
  show_message("Please give it a category:")
  category = get_input
  StoryBoard.add_story(Story.new(title, category))
end

def show_story_board
  StoryBoard.stories.each do |story| #StoryBorad.stories returns an array of stories
    show_message story 
  end
end



show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_menu
loop do
  choice = get_choice
  if choice == 1
    add_remote_stories
    show_story_board
    show_menu
  elsif choice == 2
    add_manual_stories
    show_story_board
    show_menu
  elsif choice ==  3 
    break
  else
    show_message "Invalid Selection"
    show_menu
  end
end

puts "Thank you for using Teddit!"
