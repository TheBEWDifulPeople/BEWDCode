# Copy the code from the strings_exercise_SN_solution.rb
#
# New Feature! If the Story is about cats multipy the upvotes by 5
# If the Story is about bacon multiply the upvotes by 8
# Cats frolic inspite of a tuna shortage should give you 5 times the upvotes!
# If the category is Food it gets 3 times the upvotes
stories = []
def show_message(message)
  puts message
end

def get_input
  gets.strip
end

def show_new_story_notification(story, category, upvotes)
  show_message("New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}")
end

upvotes = 1

show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_message("Please enter a News story:")
story = {}
story[:title] = get_input
show_message("Please give it a category:")
story[:category] = get_input
if  story.downcase.include?("cats")
	 show_new_story_notification(story.capitalize, category, "#{ upvotes * 5}")
elsif story.downcase.include?("bacon")
	 show_new_story_notification(story.capitalize, category, "#{ upvotes * 8}")
elsif category.downcase.include?("food")
	 show_new_story_notification(story.capitalize, category, "#{ upvotes * 3}")
else
	show_new_story_notification(story.capitalize, category, upvotes)
end
