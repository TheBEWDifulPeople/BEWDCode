# Copy your solution from hashes_exercise.rb
# We're going to use a remote data source to pull in stories, apply categories
# and have them upvoted based on our rules.
# http://mashable.com/stories.json
# http://digg.com/api/news/popular.json
# http://www.reddit.com/.json
# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to a array and display your "Front page"
# Figure out how to get to the data you need in the source you choose
# First we require rest-client and json
require 'rest-client'
require 'json'

def connect_to_mashable
	mash_as_json = RestClient.get("http://mashable.com/stories.json?")
	mashable = JSON.load(mash_as_json)
	new_array = mashable["new"] 
	return new_array
end

def calculate_upvotes(story)
  story[:Upvotes] = 1

  if story[:Title].downcase.include? 'cat'
    story[:Upvotes] *= 5
  elsif story[:Title].downcase.include? 'bacon'
    story[:Upvotes] *=8
  end

  if story[:Category].downcase == "food"
    story[:Upvotes] *= 3
  end
end

def show_message(message)
  puts message
end

def show_new_story_notification(story)
  show_message("New story added! #{story[:Title]}, Category: #{story[:Category].capitalize}, Current Upvotes: #{story[:Upvotes]}\n\n")
end

def show_all_stories(stories)
  0.upto(9) do |num|
    show_message "Story: #{stories[num][:Title]}, Category: #{stories[num][:Category]}, Current Upvotes: #{stories[num][:Upvotes]},"
  end
end

show_message("\n\nWelcome to Teddit! a text based news aggregator. Get today's news tomorrow!\n\n")
show_message("This program is formatted for the terminal in full screen mode.\n\n")
new_array = connect_to_mashable()
stories = []

0.upto(9) do |num|
  story = {}
  story[:Title] = "#{new_array[num]["title"]}" 
  story[:Category] = "#{new_array[num]["channel"]}" 
  #story[:Date] = "#{new_array[num]["post_date"]}" 
  calculate_upvotes(story)
  #show_new_story_notification(story)
  stories << story
end

show_all_stories(stories)

#Notes 
#puts new_array.class 
#Outputs "Array"

#puts new_array[0].class 
#Outputs "Hash"

#puts new_array[0].keys 
#"_id, id, title, title_tag, author, post_date, ...channel"

#mash_as_json = RestClient.get("http://mashable.com/stories.json?")
#mashable = JSON.load(mash_as_json)
#puts mashable.class 
#Outputs "Hash"

#puts mashable.keys
#Outputs new, rising, hot, channel






