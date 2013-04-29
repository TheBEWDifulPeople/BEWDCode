#!/usr/bin/ruby

print "What is your name? "
name = gets.chomp

puts "Hello #{name}! Would you like a hug???"

print "Well??? Yes or No?  "
answer = gets.chomp

case answer
	when "Yes"
		puts "Great!!! But you can't hug a computer! Sorry!"
	when "No"
		puts "Yes you do! You are lying!"
	else
		puts "You needed to answer with a 'Yes' or a 'No'! Start over from the beginning please!"
end	
