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
#	 Let them know they have 3 guesses to guess the Secret Number that is between
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


#Basic rules 3 guesses to guess the magic number: 9
guesses = 3
secret_number = 9

puts "Welcome to 'What number is Franny thinking of between 1 and 10?' What is your name?"
gamer_name = gets.to_s
puts "Hi #{gamer_name.capitalize}!!! Guess what? You'll have #{guesses}guesses"
puts "Have at it. What is your first guess?"
player_guess = gets.to_i
#This is the first guess 
if player_guess != secret_number
	puts "Lets give it another shot. You'll have #{guesses - 1} guesses left. Here is a hint."
		if player_guess > secret_number
			puts "Too High"
		else
			puts "Too low!"
		end
	puts "So what number are you thinking now"
# Second guess nested within the first guess
	player_guess = gets.to_i
		if player_guess != secret_number
		puts "okay not quite but getting closer. You'll have #{guesses-2} guesses left. Here is another hint"
			if player_guess > secret_number
			 puts "Just a tad high"
			else 
			 puts "just a tad low"
			end
		puts "So what you thinking?"
#Final guess which is also nested within the second guess which is  nested within the first. 
		player_guess = gets.to_i
			if player_guess != secret_number
			 	puts "Sorry bro. It was 9. Game Over"
			else 
			 	puts "Whoa!!! We should lock you up. Someone with your abilties is a danger... Why bother you clearly know what im thinking. You win GAME OVER!!"
			end
#this is the else statment for the second attempt
		else
			puts "Whoa!!! We should lock you up. Someone with your abilties is a danger... Why bother you clearly know what im thinking. You win GAME OVER!!"
		end
#This is the else statement for the first guess. Ultimately all guesses are nested witin the first. 
else
		puts "Whoa!!! We should lock you up. Someone with your abilties is a danger... Why bother you clearly know what im thinking. You win GAME OVER!!"
end