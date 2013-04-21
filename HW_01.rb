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

# Creator: Joseph Torreggiani        
# Date: 04/21/2013

###############################################################################

# Variable Declarations 

#Get a random number between 1 through 10 and store it.
secret_number = rand(1..10) 

#Create a variable for the number of guesses left.
guess_left = 3

#Create a variable for the user's name.
user_name = "Username"

###############################################################################

# Introduction 

print "\n\n\n"           

print "Welcome to the Secret Number game!\n\n"

print "This game was created by Joseph Torreggiani.\n\n" 

print "What is your name?\n"

# Get the user's name. 
user_name = gets.chomp

print "\n\nHello #{user_name.capitalize}!\n\n"

 
###############################################################################

# Game Instructions 

print "You have " + guess_left.to_s + " guesses to determine the Secret Number.\n
The Secrete Number is between 1 and 10.\n\n"

print "Make your first guess?\n\n"

#Get the user's guess.
user_guess = gets.to_i

###############################################################################

# Create a loop that checks the user's guesses.
loop do
	
# Check if the user's guess is correct. If correct break the loop and end the game.
	if user_guess == secret_number 
		print "\nYou guessed correctly #{user_name.capitalize}!\n\n"
		print "Game Over\n\n" 
		break
	end

# Check if the user's guess is less than the secret number.
	if user_guess < secret_number
		print "\nGuess higher.\n\n" 

# Calculate the number of guesses left.
		guess_left = guess_left - 1
		
# Check if there are any guesses left. 
			if guess_left == 0 
				print "\n\nYou have no guesses left.\n\n"
				print "\n\nGame Over\n\n "
				break
			end
# Tell the user how many guesses are left and guess again.
		print "You have #{guess_left} guesses left.\n\n" 
		print "Guess again.\n\n"

# Get the user's guess.
		user_guess = gets.to_i
	end

# Check if the user's guess is greater than the secret number.
	if user_guess > secret_number
		print "\nGuess lower.\n\n"

# Calculate the number of guesses left.
		guess_left = guess_left - 1

# Check if there are any guesses left. 
			if guess_left == 0 
				print "\n\nYou have no guesses left.\n\n"
				print "\n\nGame Over\n\n "
				break
			end

# Tell the user how many guesses are left and to guess again.
		print "You have #{guess_left} guesses left.\n\n" 
		print "Guess again.\n\n"
		user_guess = gets.to_i

	end
	
end
