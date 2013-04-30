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

get_as_json = RestClient.get("http://mashable.com/stories.json")
storyies_json = JSON.load(get_as_json)

# storyies_json["hot"].each do |story|
# 	puts "#{story["title"]}, Category: #{story["channel"]}"
# end


def show_new_story_notification(story)
  puts "New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}"
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

stories = []

# puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
# puts "Please enter a News story:"

storyies_json["new"].each do |mashable|
	story = {}
	story[:title] =	mashable["title"]
	story[:category] = mashable["channel"]
	calculate_upvotes(story)
	stories.push(story)		
end

stories.each do |story|
	show_new_story_notification(story)
end
