# Copy your solution from hashes_exercise.rb
# We're going to use a remote data source to pull in stories, apply categories
# and have them upvoted based on our rules.
# http://mashable.com/stories.json
# http://digg.com/api/news/popular.json
# http://www.reddit.com/.json
# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to a array and display your "Front page"
# Figure out how to get to the data you need in the source you choose

require 'rest-client'
require 'json'

stories = {}

def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def show_new_story_notification(story, category, upvotes)
  show_message("New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
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

digg_as_json = RestClient.get("http://digg.com/api/news/popular.json")
diggs = JSON.load(digg_as_json)
puts diggs['data['feed']'].keys

#mashable_as_json = RestClient.get("http://mashable.com/stories.json")
#mashes = JSON.load(mashable_as_json)
#new = mashes['new'] 
#new_as_json = JSON.load(new)
#reddit_as_json = RestClient.get("http://www.reddit.com/.json")
#reddits = JSON.load(reddit_as_json) 
# puts reddits['data']
#data = reddits['data']
#puts data
#title = data['title']
#puts "#{title}"
#children = data['children']
#puts children
#reddits[data].each do {|reds| puts "#{reds['data']}"}

#show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
#show_message("Please enter a News story:")
#story = get_input
#stories["title"] = story
#show_message("Please give it a category:")
#category = get_input
#stories["category"] = category
#upvotes = calculate_upvotes(story, category)
#stories["upvotes"]= upvotes
#show_new_story_notification(story, category, upvotes)

