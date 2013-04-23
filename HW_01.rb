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
#
# 3. Personally greet the player by printing to the screen, "Hi player_name!
#	 Let them know they have 3 guesses to guess the Secret Number that is between 1 and 10.
#
# 4. Create a new Integer variable called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
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
#
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
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

#welcoming students to my game
puts "Welcome to my game! I'm Mercedes, the creator."

# stores the players name in a variable
print "What is your name?"
player_name = gets.chomp

# gives user directions
puts "Hi #{player_name}. You have 3 guesses to guess the Secret Number that is between 1 and 10."

# declare variable for # of guesses and initialize with 3
guesses_left = 3

# tell user how many guesses they have left
puts "You have #{guesses_left} left."

# number the user will have to guess
secret_number = 4

# prompt user for 1st guess
print "What is your first guess?"
number_guessed = gets.to_i


while guesses_left > 0
	# checks if user guessed correct number
	if 
		number_guessed == secret_number
			print "You guessed it, you're a winner!"
			exit 
		else 
			puts "Sorry, bad luck. You have #{guesses_left-1} left."
			# gives the user a hint if they guessed the wrong number
				if 
					number_guessed > secret_number
					print "Guess lower this time."
					else 
						number_guessed < secret_number
						print "Guess higher this time."	
					end
				end
		end
	end
end 

print "You have #{guesses_left} left. You lose. Game Over. The secret number was #{secret_number}."



	

#
###############################################################################

