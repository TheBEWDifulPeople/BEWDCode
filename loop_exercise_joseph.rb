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

99.downto(2) do |num|
	puts "#{num} bottles of beer on the wall.\n"
	puts "#{num} bottles of beer!\n"
	puts "You take one down and pass it around,\n"
	puts "#{num - 1} bottles of beer on the wall!\n\n"
end

puts "You take one down and pass it around,\n"
puts "No more bottles of beer on the wall :-("