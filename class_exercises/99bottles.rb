99.downto(2)  do |num|
	puts "#{num} bottles of beer on the wall"
	puts "#{num} bottles of beer"
	puts "You take one down and pass it around,"
	puts "#{num-1} bottle of beer on the wall!\n\n" if num-1 == 1
	puts "#{num-1} bottles of beer on the wall!\n\n" if num-1 > 1
end

puts "1 bottle of beer on the wall"
puts "1 bottle of beer"
puts "You take one down and pass it around,"
puts "No more bottles of beer on the wall :-("