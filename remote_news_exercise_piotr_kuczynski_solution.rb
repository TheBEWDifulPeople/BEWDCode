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

mashable_stories = RestClient.get 'http://mashable.com/stories.json'
mashable_stories_p = JSON.load(mashable_stories)
mashable_stories_rising = mashable_stories_p ['hot']
mashable_stories_rising.each do |item|
	story = { title: item['title'], category: item['channel'], shares: item['shares']['total']}
	puts "Here is a story from Mashable!"
	puts "#{item['title']}, Category: #{item['channel']}, Upvotes: #{item['shares']['total'] } "
	puts
end









 

