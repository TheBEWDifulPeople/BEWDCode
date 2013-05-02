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
require "rest-client"
results=RestClient.get "http://digg.com/api/news/popular.json"
puts results



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

  if story[:title].downcase.include? "cat"
    story[:upvotes] *= 5
  elsif story[:title].downcase.include? "bacon"
    story[:upvotes] *=8
  end

  if story[:category].downcase == "food"
    story[:upvotes] *= 3
  end
end

def show_all_stories(stories)
  show_message "Story: #{stories.first[:title]}, Category: (#{stories.first[:category]}), Current Upvotes: #{stories.first[:upvotes]}"
end
show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_message("Please enter a News story:")
stories = []
story = { title: gets.strip }
show_message("Please give it a category:")
story[:category] = gets.strip
calculate_upvotes(story)
stories << story
show_new_story_notification(story)
show_all_stories stories