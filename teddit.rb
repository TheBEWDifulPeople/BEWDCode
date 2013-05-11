puts "Welcome to Teddit! a text based news aggregator. Get today\'s news tomorrow!"
puts "Story: Man raised by woulverines, then eaten Current upvotes: 4"
story = "The F.B.I. appealed backpack at the site of one of the blasts "
upvotes = 7

puts "Story: " + story + "Current upvotes: " + upvotes.to_s

puts "Story: #{story} Current upvotes: #{upvotes}"



def show_story(story,upvotes)
	puts "Story: #{story.capitalize} Current upvotes: #{upvotes}"
end

show_story "GA opens new school", 70
show_story "We learned a lot", 1000

