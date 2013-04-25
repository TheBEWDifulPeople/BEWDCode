puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"
puts "Story: Man raise by wolverines, then eaten Current upvotes: 4"
story = "Cat makes fortune by showing elderly how to play dice"
upvotes = 7

puts 'Story: ' + story + ' Current upvotes: ' + upvotes.to_s
puts "Story: #{story.capitalize.reverse} Current upvotes: #{upvotes}"

def show_story(story, upvotes)
	puts "Story: #{story.capitalize} Current upvotes: #{upvotes}"
end
show_story "GA opens new school", 70
show_story "BEWS Class learned ruby 100% the first day", 1000

def encourage
	puts "You're doing great"
end

encourage
encourage
encourage