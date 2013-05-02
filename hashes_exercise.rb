# Copy your solution from conditional_exercise.rb
# Create an empty stories array. This will be used to hold all of our stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story, upvotes and category string along the way
# Break out the user input so the hash looks like the one below 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add this hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Through the stories array 
# Test your cat, bacon, and food upvote upgrades work.



def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def show_new_story_notification(story, category, upvotes)
  show_message("New story added! #{title}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
end

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_message("Please enter a News story:")
title = get_input

stories={}
Story=[title:title]

show_message("Please give it a category:")
category = get_input

Story=[category:category]

def calculate_upvotes(title, category)
  upvotes = 1

  if title[:title]downcase.include? 'cat'
    upvotes * 5
  elsif title[:title].downcase.include? 'bacon'
    upvotes *8
  end

  if category.downcase == "food"
    upvotes * 3
  end
end

Story=[upvotes:1]


upvotes = calculate_upvotes(story, category)
show_new_story_notification(story, category, upvotes)