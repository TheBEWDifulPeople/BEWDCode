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
#
###############################################################################


#Welcome to the game. 

puts "Welcome to the Countdown game by Ely"

print "Enter your name:"
user_name = gets.chomp

#Tells the user how many guesses they have to guess the correct number.

puts "Hi #{user_name}! You have three chances to guess a secret number between 1 and 10."

guesses_left = 3

puts "You currently have #{guesses_left} guesses remaining."

#Defines the secret number. 

secret_number = rand(10) + 1

#Code for entering guess 

print "Enter your first guess:"
guess = Integer(gets.chomp)

#Evaluating guess

until guesses_left == 1

	if guess == secret_number 
		break

	elsif guess > secret_number
		puts "Sorry, Guesses remaining: #{guesses_left -1}"
		puts "Enter a smaller number:"
		guess = Integer(gets.chomp)

	elsif guess < secret_number
		puts "Sorry, Guesses remaining: #{guesses_left -1}"
		puts "Enter a higher number:"
		guess = Integer(gets.chomp)	
	end

		guesses_left = guesses_left - 1
end

	if guess == secret_number
		puts "Congratulations! You guessed it. Do you want to play again?"

	elsif guesses_left == 1 
		puts "Game over. You didn't guess correctly. The secret number is #{secret_number}. Do you want to play again?"

	end

#End of game



