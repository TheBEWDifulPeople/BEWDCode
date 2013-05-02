###############################################################################

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

puts "Welcome to my game!"
puts "I am Kevin, the creator!"
puts "What is your name? "
player_name = gets #this prompts the player for input and places it in the variable player_name
puts "Hi #{player_name}"
puts "You have 3 guesses to guess the Secret Number!"
puts "The secret number is between 1 and 10"

guesses_left = [3,2,1] #creates an array with the number of guesses that remain
secret_number = 5 # creates a variable calles secret number and sets it to the number the player will try to guess

3.downto(1) do |guesses_left| #counts down 3 loops
puts "What is your guess?"
first_guess = gets # prompts the player to enter their first guess and saves it to the variable first_guess
if first_guess.to_i > secret_number && guesses_left.to_i-1 > 0 #converts the string from first_guess to an integer,compares it to the secret_number and checks if there are enought guesses left
	puts "too high, guess again.  You have #{guesses_left-1} more guesses." 
end
if first_guess.to_i < secret_number && guesses_left.to_i-1 > 0
	puts "too low, guess again.  You have #{guesses_left-1} more guesses."
end
if first_guess.to_i == secret_number
	puts "You guessed the secret number!  You win!"
	break if first_guess.to_i == secret_number #breaks out of the block if they guess the number right and exits the game
end
if guesses_left.to_i-1 == 0
	puts"Game Over - the Secret Number was 5."
end
end



	

# if guess == secret_number
#	puts "You've guessed the secret number, you win!"
# else puts "Try again"


# puts "Correct, you win!" if guess = secret_number