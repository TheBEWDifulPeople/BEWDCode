puts "Welcome to Teddit a text based news aggregator. Get today's news tomorrow!"
puts "Story: Man raise by wolverines, then eaten Current upvotes: 4"
story = "Cat makes fortune by showing elderly how to play dice"
upvotes = 7

puts 'Story: ' + story + ' Current upvotes: ' + upvotes.to_s

def show_story(story, upvotes)
	puts "Story: #{story.capitalize} Current upvotes: #{upvotes}"
end

show_story "GA opens new school", 70


