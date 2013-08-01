# We're going to add a remote data source to pull in stories, Digg and Mashable.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'

def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def show_new_story_notification(story)
  show_message("New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}")
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
  stories.each do |story|
    show_message "Story: #{story[:title]}, Category: (#{story[:category]}), Current Upvotes: #{story[:upvotes]}"
  end
end

def get_from_mashable
  res = JSON.load(RestClient.get('http://mashable.com/stories.json'))
  res["hot"].map do |story|
    s = {title: story["title"], category: story["channel"]}
    calculate_upvotes s
    show_new_story_notification s
    s
  end
end

def get_from_digg
  res = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))
  res["data"]["feed"].map do |story|
    s = {title: story["content"]["title"], category: story["content"]["tags"].map{|s| s["display"]}.join(', ')}
    calculate_upvotes s
    show_new_story_notification s
    s
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

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
stories = get_from_mashable
stories += get_from_digg
show_all_stories stories

