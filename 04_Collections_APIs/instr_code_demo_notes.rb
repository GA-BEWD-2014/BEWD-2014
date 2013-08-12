#Iterating Over Collections
#TIME: 25 min
#INSTRUCTIONAL DESIGN NOTES: 
# => This exercise brings a practical approach to how hashes and arrays are useful in Rails.
# => We are using Reddit in this example. This maps well to the exercise.
# => Build this file from scratch with the students. When testing in NYC we found it helpful
# to work in irb and show how the data is returned from Reddit, before running this code in the terminal.
# => Show students how to approach the problem so they are prepared for lab.
# => During the lab students will add Mashable or Digg stories.	

require 'json'
require 'rest-client'

require 'json'
require 'rest-client'

def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def show_new_story_notification(story)
  "New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}"
end

def calculate_upvotes(story)
  story[:upvotes] = 1

  if story[:title].downcase.include? 'cat'
    story[:upvotes] *= 5
  elsif story[:title].downcase.include? 'bacon'
    story[:upvotes] *=8
  end

  if story[:category].downcase == "food"
    story[:upvotes] *= 3
  end
end

def show_all_stories(stories)
  #Complete this section with both map and each. Highlight the difference of each.
  stories.map do |story|
    "Story: #{story[:title]}, Category: (#{story[:category]}), Current Upvotes: #{story[:upvotes]}"
  end
end

def get_from_reddit
  res = JSON.load(RestClient.get('http://www.reddit.com/.json'))
  res["data"]["children"].map do |story|
    s = {title: story["data"]["title"], category: story["data"]["subreddit"]}
    calculate_upvotes s
    show_new_story_notification s
    s
  end

end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
stories = get_from_reddit
puts show_all_stories stories




