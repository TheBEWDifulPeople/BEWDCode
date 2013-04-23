print "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!\n"
print "Please enter a news story: "

storytitle = gets.chomp

print "Please give it a category: "

storycategory = gets.capitalize.chomp

print "New story added! #{storytitle}, Category: #{storycategory}, Current Upvotes: 1\n" 
