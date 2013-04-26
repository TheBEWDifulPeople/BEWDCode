# Copy your solution from conditional_exercise.rb
# Create an empty stories array. This will be used to hold all of our stories we capture.
# Users enter the story as they do now, but it gets put in a hash instead. 
# Update any reference to the story, upvotes and category string along the way
# Break out the user input so the hash looks like the one below 
# { title: "Monkeys thank mayor for flounder tooth necklace", category: "Teeth", upvotes: 1 }
# Add this hash to an array called stories and print "Story: Monkeys thank mayor for flounder tooth necklace, Category: (Teeth), Current Upvotes: 1"
# Through the stories array 
# Test your cat, bacon, and food upvote upgrades work.
stories= []

def show_message(message)
    puts message
end

def get_input
    gets.strip
end

def show_new_story_notification(story, category, upvotes)
    show_message("New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
end

story = {}

def calculate_upvotes(story)
   story[:upvotes] = 1

upvotes = 1
story[:upvotes] = upvotes


show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_message("Please enter a News story:")

story[:title] = get.input
if story[:title].downcase.include?("cats")
	story[:upvotes] *= 5
end

if story.downcase.include?("bacon")
	story[:upvotes] = 8
end

show_message("Please give it a category:")

story[:category] = get_input

if story == "Cats frolic inspite of a tuna shortage"
	upvotes *= 5
end

if category.downcase.include?("food")
 	upvotes *= 3
end

