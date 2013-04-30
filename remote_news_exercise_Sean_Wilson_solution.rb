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
result = RestClient.get "http://mashable.com/stories.json"
result = JSON.load(result)

# story = result["hot"].first

# Find Title
# story_title = story["title"]
# title = result["hot"].first["title"]

# Find Shares / Upvotes
# puts story["shares"]["total"]
# shares = result["hot"].first["shares"]["total"]
# print shares

# print upvotes

# Find Category
# puts story["channel"]
# categoty = result["hot"].first["channel"]

def show_message(message)
  puts message
end

# def get_input
#   gets.strip
# end


def show_new_story_notification(x)
  show_message("New story added! #{x[:title]}, Category: #{x[:category].capitalize}, Current Upvotes: #{x[:upvotes]}")
end

stories = []

0.upto(result["hot"].length - 1) do |count|
  stories << {title: result["hot"][count]["title"], category: result["hot"][count]["channel"], upvotes: result["hot"][count]["shares"]["total"] }
end

def calculate_upvotes (x)

  if x[:title].downcase.include? 'cats'
     x[:upvotes] *= 5
  end

  if x[:title].downcase.include? 'bacon'
     x[:upvotes] *= 8
  end

  if x[:category].downcase == 'food'
     x[:upvotes] *= 3
  end
  x[:upvotes]
end

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")

stories.each do |x|
  x[:upvotes] = calculate_upvotes(x)
  show_new_story_notification(x)
end


# x[:upvotes] = calculate_upvotes(x)
# show_new_story_notification(x)