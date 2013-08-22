# We're going to add a remote data source to pull in stories, Digg and Mashable.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'

def get_input
  gets.strip
end

def show_message(message)
  puts message
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
  response = JSON.load(RestClient.get('http://mashable.com/stories.json'))

  response["hot"].map do |entry|
    story = {title: entry["title"], category: entry["channel"]}
    calculate_upvotes story
    show_new_story_notification story
    story
  end
end

def get_from_digg
  response = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))

  response["data"]["feed"].map do |entry|
    title = entry["content"]["title"]
    category = entry["content"]["tags"].map { |tag| tag["display"] }.join(', ')
    story = {title: category, category: category}

    calculate_upvotes story
    show_new_story_notification story

    story
  end
end

def get_from_reddit
  response = JSON.load(RestClient.get('http://www.reddit.com/.json'))

  response["data"]["children"].map do |entry|
    story = {title: story["data"]["title"], category: story["data"]["subreddit"]}

    calculate_upvotes story
    show_new_story_notification story

    story
  end
end

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")

stories = get_from_mashable + get_from_digg + get_from_reddit

show_all_stories stories

