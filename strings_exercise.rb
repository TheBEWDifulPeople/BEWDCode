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

print "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!\n"
print 'Please enter a News story:'
a = gets.chomp
print "please give it a category:"
b = gets.chomp
upvotes = 9
print "New story added! #{a} \n Category: #{b} \n Upvotes #{upvotes.to_s} \n"