# Copy the code from the strings_exercise_SN_solution.rb
#
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

def show_new_story_notification(story, category, upvotes)
  show_message("New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
end


show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_message("Please enter a News story:")
story = get_input
show_message("Please give it a category:")
category = get_input


upvotes = 1

if story.downcase.include?("cat")

# This is saying take the upvotes variable and set it equal to upvotes * 5. In other words "upvotes = upvotes * 5"
# is the same as "upvotes *= 5"


	upvotes *= 5
end

if story.downcase.include?("bacon")
	upvotes *= 8
end

if category.downcase.include?("food")
	upvotes *= 3
end
upvotes

show_new_story_notification(story, category, upvotes)