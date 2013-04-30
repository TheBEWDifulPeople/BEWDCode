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

result_digg = RestClient.get "http://digg.com/api/news/popular.json"
result_digg = JSON.load(result_digg)

result_reddit = RestClient.get "http://www.reddit.com/.json"
result_reddit = JSON.load(result_reddit)

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
  show_message("#{x[:title]}, Category: #{x[:category].capitalize}, Current Upvotes: #{x[:upvotes]}")
end

stories = []
digg_stories = []
reddit_stories = []


0.upto(result["hot"].length - 1) do |count|
  stories << {title: result["hot"][count]["title"], category: result["hot"][count]["channel"], upvotes: result["hot"][count]["shares"]["total"] }
end

0.upto(result["new"].length - 1) do |count|
  stories << {title: result["new"][count]["title"], category: result["new"][count]["channel"], upvotes: result["new"][count]["shares"]["total"] }
end

0.upto(result["rising"].length - 1) do |count|
  stories << {title: result["rising"][count]["title"], category: result["rising"][count]["channel"], upvotes: result["rising"][count]["shares"]["total"] }
end

0.upto(result_digg["data"]["feed"].length - 1) do |count|
  digg_stories << {title: result_digg["data"]["feed"][count]["content"]["title"], category: result_digg["data"]["feed"][count]["content"]["tags"].first["name"], upvotes: result_digg["data"]["feed"][count]["tweets"]["count"].to_i + result_digg["data"]["feed"][count]["fb_shares"]["count"].to_i}
end

0.upto(result_reddit["data"]["children"].length - 1) do |count|
  reddit_stories << {title: result_reddit["data"]["children"][count]["data"]["title"], category: result_reddit["data"]["children"][count]["data"]["subreddit"], upvotes: result_reddit["data"]["children"][count]["data"]["ups"]}
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

show_message("")
show_message("Here is our Front Page:")

show_message("")
show_message("Stories from Mashable:")
show_message("")

stories.each do |x|
  x[:upvotes] = calculate_upvotes(x)
  show_new_story_notification(x)
end

show_message("")
show_message("Stories from Digg:")
show_message("")

digg_stories.each do |x|
  x[:upvotes] = calculate_upvotes(x)
  show_new_story_notification(x)
end

show_message("")
show_message("Stories from Reddit:")
show_message("")

reddit_stories.each do |x|
  x[:upvotes] = calculate_upvotes(x)
  show_new_story_notification(x)
end

# x[:upvotes] = calculate_upvotes(x)
# show_new_story_notification(x)