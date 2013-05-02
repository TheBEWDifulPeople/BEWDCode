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

def show_new_story_notification(new_story)
  show_message("New story added! #{new_story[:title]}, Category: #{new_story[:category].capitalize}, Current Upvotes: #{new_story[:upvotes]}")
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

def show_all_stories(new_stories)
  show_message "Story: #{new_stories.first[:title]}, Category: (#{new_stories.first[:category]}), Current Upvotes: #{new_stories.first[:upvotes]}"
end

# Welcome to Teddit!

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")

stories = Array.new

def stories_from_mashable
    stories_from_mashable_json = RestClient.get 'http://mashable.com/stories.json'
    from_mashable = JSON.parse stories_from_mashable_json 
end



#Latest Mashable Stories
mashable_stories = stories_from_mashable




mashable_stories["new"].each do |news|
    story = {}
    story[:title] = news["title"]
    story[:category] = news["channel"] 
    calculate_upvotes(story)
    stories.push(story)
end

stories.each do |story|
  show_new_story_notification(story)
end

###########################


# http://mashable.com/stories.json
# http://digg.com/api/news/popular.json
# http://www.reddit.com/.json
