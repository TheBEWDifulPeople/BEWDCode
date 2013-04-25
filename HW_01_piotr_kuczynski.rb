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
# Let them know they have 3 guesses to guess the Secret Number that is between 1 and 10.
#
# 4. Create a new Integer variable called `guesses_left`, this will count
# down how many more times the Player can guess. It's initial value should
# be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
# into a String that tells the Player how many guesses they have left
# and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
# a number of your choosing between 1 and 10. This is the number that
# our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
# data type).
#
# 8. Use a Conditional to find out if the Player has guessed the
# correct number.
#
# 1. If they guessed correctly, tell them they won and exit the
# game.
#
# 2. For an incorrect guess decrement the variable `guesses_left` by 1 and
# print to the screen how many guesses the Player has left.
#
# 1. If they guessed a number too low, tell them that they need to
# guess higher on their next guess.
#
# 2. If they guessed a number too high, tell them that they need to
# guess lower on their next guess.
#
# 9. Repeat the above process for a total of 3 times asking the Player
# to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print "Game Over" and
# let the player know the `secret_number`.
#
# 11. Make sure to add helpful comments to your code to document what
# each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################

# here are the integer variable
guesses = 3
correct_number = 7

# intro
puts "Greetings! You are viewing a program created by Piotr Kuczynski!"
puts

# who are you
puts "What is your name?"
name = gets.chomp
puts

# instructions
puts "#{name} you have #{guesses} guesses to guess the Secret Number that is between 1 and 10. Ready?"
puts

# conditional repeat for turns 2 and 3. it checks to see if the guess is correct
3.downto(2) do |guesses|
puts "Please make your guess."
your_guess = gets.chomp.to_i
puts
	if your_guess == correct_number
	 	puts "You win!"
	 	exit
	elsif your_guess < correct_number
		puts "Wrong. You need to guess higher. Please try again."
		puts "You have #{guesses-1} guesses left."
		puts
	elsif your_guess > correct_number
		puts "Wrong. You need to guess lower. Please try again."
		puts "You have #{guesses-1} guesses left."
		puts
	else
		puts "Correct. You win."
	end
end

puts "Please make your guess."
# conditional repeat for turns 1. it checks to see if the guess is correct
your_guess = gets.chomp.to_i
puts
	if your_guess == correct_number
	 	puts "You win!"
	 	exit
	elsif your_guess < correct_number
		puts "Wrong. Game Over. The secret number is #{correct_number}."
		puts
	elsif your_guess > correct_number
		puts "Wrong. Game Over. The secret number is #{correct_number}."
		puts
	else
		puts "Correct. You win."
	end




