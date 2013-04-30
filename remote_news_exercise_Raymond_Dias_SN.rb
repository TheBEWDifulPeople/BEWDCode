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
stories_array = []

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

##### NEW CODE #####

result = RestClient.get "http://mashable.com/stories.json"
result_hash = JSON.load(result)

# Just printing out all the titles here, just to demonstrate to myself that this syntax is accessing them
result_hash["hot"].each {|story| puts story["title"]}

# I don't understand why this doesn't work...
# I'm trying to take each the "title" key and the "Channel" key from each of the "hot" hashes and put them in the stories hash as "title" and "category.
# These keys are passed to the the calculate_upvotes method and the returned result is assigned to the "upvotes" key in the stories hash.
# Finally I'm trying to add each of the stories hashes creadted (one for each "hot" key) into an array named stories_array.
# But it seems like stories_array just gets a bunch of entries with the last title repeated. 
result_hash["hot"].each {|story| stories["title"] = story['title'], stories["category"] = story['channel'], stories["upvotes"] = calculate_upvotes(story['title'], story['channel']), stories_array.push(stories)}

puts "This is the 'Front Page'"
puts stories_array

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

