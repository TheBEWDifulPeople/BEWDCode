# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(

bottles = 99

98.times do
less_one = bottles - 1
	if less_one > 1
		puts "#{bottles} bottles of beer on the wall." 
		puts "#{bottles} bottles of beer!" 
		puts "You take one down and pass it around," 
		puts "#{less_one} bottles of beer on the wall!"
		puts
	else
		puts "#{bottles} bottles of beer on the wall." 
		puts "#{bottles} bottles of beer!" 
		puts "You take one down and pass it around,"
		puts "#{less_one} bottle of beer on the wall!"
		puts	
	end
bottles = bottles - 1
end
	 
puts "1 bottle of beer on the wall." 
puts "1 bottle of beer!" 
puts "You take one down and pass it around,"
puts "No more bottles of beer on the wall :-("
