

# Copy your solution from conditional_exercise.rb
# Create an empty stories array. This will be used to hold all of our stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story, upvotes and category string along the way
# Break out the user input so the hash looks like the one below 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add this hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Through the stories array
# Test your cat, bacon, and food upvote upgrades work.
require 'json'
require 'rest-client'
require 'pp'

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
 		puts "Story: #{story[:title]}, Category: (#{story[:category]}), Current Upvotes: #{story[:upvotes]}"
	end
end

stories = Array.new

result = RestClient.get("http://mashable.com/stories.json")
json_result = JSON.load(result)

json_result['new'].each do |item|
	puts item.keys
	story = { title: item['title'],category: item['channel'] }
	calculate_upvotes(story)
	stories << story
end

#show_new_story_notification(story)
show_all_stories(stories)


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

def show_message(message)
  puts message
end

def show_new_story_notification(story)
  show_message("New story added! #{story[:title]}, Category: #{story[:category].capitalize}, Current Upvotes: #{story[:upvotes]}\n\n")
end

def show_all_stories(stories)
  0.upto(9) do |num|
    show_message "Story: #{stories[num][:title]}, Category: (#{stories[num][:category]}), Current Upvotes: #{stories[num][:upvotes]}"
  end
end

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!\n\n")
new_array = connect_to_mashable()
stories = []

0.upto(9) do |num|
  story = {}
  story[:title] = "#{new_array[num]["title"]}" 
  story[:category] = "#{new_array[num]["channel"]}" 
  story[:date] = "#{new_array[num]["post_date"]}" 
  calculate_upvotes(story)
  #show_new_story_notification(story)
  stories << story
end

show_all_stories(stories)





