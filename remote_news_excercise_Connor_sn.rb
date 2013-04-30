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

/hashes_Excersise.rb/

def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def calculate_upvotes(story_Part)
    story = story_part[:story]
    category = story_part[:category]
  upvotes = 1

  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *=8
  end
  if category.downcase == "food"
    upvotes *= 3
  end
  story_object[:upvotes] = upvotes
end

puts "Latest Mashable Business News Loading..."

def show_new_story_notification(story_part)
  show_message("Latest Headlines: #{story_part['title']}, Category: #{story_part['channel'].capitalize}, Twitter Shares: #{story_part['shares']['twitter']}")
end

def mashable
    mashable_stories_json = RestClient.get 'http://mashable.com/business.json' #=> String
    mashable_stories = JSON.parse mashable_stories_json #=> Hash
    mashable_hot_stories = mashable_stories['hot'] #=> Array
end

stories = mashable

stories.each do |story|
    show_new_story_notification(story)
end