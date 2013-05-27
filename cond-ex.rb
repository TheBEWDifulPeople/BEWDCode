
def show_message(message)
  puts message
end

def get_input
  gets.strip 
end

def show_new_story_notification(story, category, upvotes)
  show_message("New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: 1")
end

def add_or_exit()
	loop do 
		decision = gets.chomp
		if decision != "yes" and decision != "no"
			print "Enter yes to add a News story. Enter no to exit.\n"
			next
		end

		if decision == "yes"
			"yes"
		end

		if decision == "no"
			"no"
		end
	end
end



show_message("Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!")
show_message("Please enter a News story:")
story = get_input
show_message("Please give it a category:")
category = get_input
show_new_story_notification(story, category, 1)
show_message("Enter yes to add a News story. Enter no to exit.\n")

decision = add_or_exit()

	if answer == "yes"
		next
	end

	if answer == "no"
		print "You left teddit.\n\n"
		break
	end
