# Add to Teddit!
# We want to be able to add stories from the command line
# Deliver this experience
# Print "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
# Print 'Please enter a News story:'
# ***Waits for input*** use the gets method here. (Assume you entered "Bear feels remorse for stealing candy from baby")
# Bonus if you don't use gets.chomp
# Print 'Please give it a category:'
# ***Waits for input***(Assume you entered "ecological", note all in lowercase)
# Print "New story added! Bear feels remorse for stealing candy from baby, Category: Ecological, Current Upvotes: 1"
# Find ways to incorperate methods here. Look for repetition

#by Piotr Kuczynski. I do not know how to make the final line print on a single line HELP!

upvotes = 7

puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"

puts "Please enter a News story:"
story = gets.chomp

puts "Please give it a category:"
category = gets.chomp


puts "New story added! #{story}, Category: #{category.capitalize!}, Current Upvotes: #{upvotes}"
