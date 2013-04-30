# Copy the code from the strings_exercise_SN_solution.rb
# New Feature! If the Story is about cats multipy the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# Cats frolic inspite of a tuna shortage should give you 5 times the upvotes!
# If the category is Food it gets 3 times the upvotes

def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def calculate_upvotes(story, category)
  upvotes = 1

  if story.downcase.include? 'cat'
    upvotes *= 5
  elsif story.downcase.include? 'bacon'
    upvotes *=8
  end

  if category.downcase == "food"
    upvotes *= 3
  end
  upvotes
end

def show_new_story_notification(story, category, upvotes)
  show_message("Story: #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
end

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_message("Please enter a News story:")
story = get_input
show_message("Please give it a category:")
category = get_input
upvotes = calculate_upvotes(story, category)

stories = Array.news
stories[] = [{title:story,category:category,upvotes:upvotes}]

show_new_story_notification(story, category, upvotes)

# Copy your solution from conditional_exercise.rb
# Create an empty stories array. This will be used to hold all of our stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story, upvotes and category string along the way
# Break out the user input so the hash looks like the one below 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add this hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Through the stories array 
<<<<<<< HEAD
# Test your cat, bacon, and food upvote upgrades work.
=======
# Test your cat, bacon, and food upvote upgrades work.

>>>>>>> 448ea884c8450d2b45e25320cc1153d2794d611a
