# Copy your solution from hashes_exercise.rb
# We're going to use a remote data source to pull in stories, apply categories
# and have them upvoted based on our rules.
# http://mashable.com/stories.json
# http://digg.com/api/news/popular.json
# http://www.reddit.com/.json
# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to a array and display your "Front page"
# Figure out how to get to the data you need in the source you choose

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

def fetch_from(source)
  sources = { 
    mashable: 'http://mashable.com/stories.json',
    digg: 'http://digg.com/api/news/popular.json',
    reddit: 'http://www.reddit.com/.json',
  }
  JSON.load(RestClient.get(sources[source]))
end

def get_from_mashable
  res = fetch_from :mashable
  normalize_data(res["hot"]) do |story|
    {title: story["title"], category: story["channel"]}
  end
end

def get_from_digg
  res = fetch_from :digg
  normalize_data(res["data"]["feed"]) do |story|
    {title: story["content"]["title"], category: story["content"]["tags"].map{|s| s["display"]}.join(', ')}
  end
end

def get_from_reddit
  res = fetch_from :reddit
  normalize_data(res["data"]["children"]) do |story|
    {title: story["data"]["title"], category: story["data"]["subreddit"]}
  end
end

def normalize_data(feed_data)
  feed_data.map do |feed_item|
    yield(feed_item).tap |s|
    calculate_upvotes s
    show_new_story_notification s
  end
end

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
stories = get_from_mashable
stories += get_from_digg
stories += get_from_reddit
show_all_stories stories

