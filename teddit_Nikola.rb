def show_story(story, category, upvotes = 1)
	puts "New story added! #{story}, Category: #{category}, Current upvotes: #{upvotes}"
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = gets.strip
puts "Please give it a category:"
category =  gets.strip


show_story(story, category)
