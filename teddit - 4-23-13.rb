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

puts "Welcome to Teddit. A text based news aggregator. Get today's news tomorrow!"

puts "please enter a news story: "
story = gets.chomp
puts "please enter a category: "
category = gets.chomp

puts "New story added! #{story}, Category: #{category}, Current Upvotes: 1"


########################## Second way, without gets.chomp ######################

puts "Welcome to Teddit. A text based news aggregator. Get today's news tomorrow!"
puts "(Without using gets.chomp)"

puts "please enter a news story: "
new_story = gets.chop
puts "please enter a category: "
new_category = gets.chop

puts "New story added! #{new_story}, Category: #{new_category}, Current Upvotes: 1"