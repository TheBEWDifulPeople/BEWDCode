
#!/usr/bin/env ruby
puts "Hello users, I'm the creator. What's your name?"
userName = gets.chomp	
puts "Welcome #{userName}, are ready for some fun?"

guesses_left = 3
secret_number = 4 
guessed = 0 #if number is guessed

until guesses_left == 0 || guessed == 1 do #logic loop if all guesses are used or number is guessed

		puts "You have #{guesses_left} guesses left, take a guess at the number I'm thinking."
		
		player_guess = gets.to_i #inputs number and casts to int

		if secret_number == player_guess
			guessed = 1 #number is guessed, exit loop
		elsif player_guess > secret_number
			puts "Sorry #{userName}, you guessed too high."
		elsif player_guess < secret_number
			puts "Sorry #{userName}, you guessed too low."
		end

		guesses_left -= 1 #when guesses = 0, exit loop
end


if guessed == 0
	puts "Sorry #{userName}, but you ran out of tries. The secret number is #{secret_number}. Better luck next time!"
end

if guessed == 1
	puts "Congrats #{userName}, you guessed the number! You rawk and earn 5 unix beard points."
end
		


###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 01
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator.
#

# 2. Ask the user for their name and store it in a variable.
# 3. Personally greet the player by printing to the screen, "Hi player_name!
#	 Let them know they have 3 guesses to guess the Secret Number that is between 1 and 10.
# 4. Create a new Integer variable called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.

#     1. If they guessed correctly, tell them they won and exit the
#        game.
#
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print "Game Over" and
#     let the player know the `secret_number`.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################

