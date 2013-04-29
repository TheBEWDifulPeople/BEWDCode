#!/usr/bin/ruby

puts "Welcome to this game, user! I am THE CREATOR!"

puts "What is your name?"
name = gets.chomp

puts "Hi #{name}! You have three guesses to guess the Secret Number that is between 1 and 10."

guesses_left = 3

while guesses_left > 0 do

if guesses_left != 1 
	puts "You have #{guesses_left} guesses left."
else
	puts "You have #{guesses_left} guess left. This is your last chance!"
end

secret_number = 6

puts "Please make a guess."
answer = gets.chomp 

guess = answer.to_i

case guess
	when 0 .. 5 
		guesses_left = guesses_left - 1
			if guesses_left > 0
				puts	
				puts "That guess was too low! You need to guess higher next time!"
			end
			if guesses_left == 0
				puts
				puts "Game Over! The secret number was \"6\"."
			end
	when 7 .. 10
		guesses_left = guesses_left - 1
			if guesses_left > 0
				puts
				puts "That guess was too high! You need to guess lower next time!" 
			end
			if guesses_left == 0
				puts
                                puts "Game Over! The secret number was \"6\"."
                        end
	when 6 
		puts
		puts "That guess was correct! You have won! Exiting the game now..."
		guesses_left = 0
	else
		guesses_left = guesses_left - 1
			if guesses_left > 0
				puts "That's not a number between 1 and 10! You are WASTING your guesses!!!"
			end	
			if guesses_left == 0
                                puts "Game Over! The secret number was \"6\"."
                        end

end
end	
