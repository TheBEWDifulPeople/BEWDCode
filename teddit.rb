# Function that gets and formats the new story.
# def get_story()
# 	new_story = gets
# 	return new_story.chomp.capitalize
# end

# # Function that gets and formats the new category
# def get_category
# 	new_category = gets
# 	new_category.chomp.capitalize
# end

# # Functions adds an upvote if the story includes cat 
# def get_upvotes(story)
# 	puts "Inside get_upvotes"
# 	puts "#{story}"
# 	if story.downcase.include?("cat") 
# 		return 1
# 	end
# end


# def choose()
# 	loop do 
# 		decision = gets.chomp
# 		if decision != "yes" and decision != "no"
# 			print "Enter yes to add a story. Enter no to exit.\n"
# 			next
# 		end

# 		if decision == "yes"
# 			return "yes"
# 		end

# 		if decision == "no"
# 			return  "no"
# 		end
# 	end
# end

# print "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!\n\n"

# loop do
# print "\nPlease enter a News story.\n"
# story = get_story()

# print "\n\nPlease give it category.\n"
# category = get_category()

# upvotes = get_upvotes(story)

# print "\n\nNew Story Added!: #{story}, Category: #{category}, Current Upvotes #{upvotes} \n\n"

# print "Enter yes to add a story. Enter no to exit.\n"
# answer = choose()
	
# 	if answer == "yes"
# 		next
# 	end

# 	if answer == "no"
# 		print "You left teddit.\n\n"
# 		break
# 	end
# end

array = []
puts array.class

