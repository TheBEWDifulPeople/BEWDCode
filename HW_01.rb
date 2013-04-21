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

# 2. Ask the user for their name and store it in a variable.


# 3. Personally greet the player by printing to the screen, "Hi player_name!
#	 Let them know they have 3 guesses to guess the Secret Number that is between 1 and 10.


# 4. Create a new Integer variable called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.

# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.

# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.

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

# METHOD THAT ASKS FOR THE GUESS AND CHECKS IF THE GUESS IS CORRECT
def makeGuess(secret_number,guesses_left)
	puts "You have #{guesses_left} guesses left."
	puts "Try to guess the number."
	guess = gets.to_i

	if guess == secret_number
		return 1
	else
		guesses_left = guesses_left - 1
		puts "\nThat is not correct."
		if guesses_left != 0
			if guess < secret_number 
				puts "You need to guess higher on your next guess"
			else
				puts "You need to guess lower on your next guess"
			end
		end
		return 0
	end
end

#INTITIALIZE KEY VARIABLES
guesses_left = 3
secret_number = 6

#GAME INTRODUCTION
puts "Welcome to Brad's Game.  This game was created by Brad Weinberg."
puts "What is your first name?"

#GET THE PERSON'S NAME AND GREAT THEM AND EXPLAIN THE GAME
name = gets.chomp
puts "\nHi #{name}!"
puts "You will have 3 guesses to guess the Secret Number.  The Secret Number is between 1 and 10."

#LOOP THREE TIMES OR UNTIL PLAYER CORRECTLY GUESSES THE NUMBER
while guesses_left > 0
		#IF THE PLAYER GUESSES CORRECTLY, TELL THEM AND EXIT THE GAME
	if makeGuess(secret_number,guesses_left) == 1
		puts "\nCongratulations! You guessed the number correctly. Game over."
		exit
	else
		guesses_left = guesses_left - 1
	end
end

#AFTER THREE GUESSES EXIT THE GAME
puts "Game Over. The secret number is #{secret_number}"
exit