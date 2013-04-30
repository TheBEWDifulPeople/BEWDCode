require 'rest-client'
require 'json'

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
  show_message "Story: #{stories.first[:title]}, Category: (#{stories.first[:category]}), Current Upvotes: #{stories.first[:upvotes]}"
end

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")

show_message("Enter your search:")
search = gets.chomp.gsub(" ", "%20")


mash_as_json = RestClient.get("http://mashable.com/stories.json?q=#{search}")
mashable = JSON.load(mash_as_json)

mashable["results"].each do |mash|
  puts "Tweet from #{mash['from_user']}: #{mash['text']}"
end



show_message("Please enter a News story:")
stories = []
story = { title: gets.strip }
show_message("Please give it a category:")
story[:category] = gets.strip
calculate_upvotes(story)
stories << story
show_new_story_notification(story)
show_all_stories stories