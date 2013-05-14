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
puts "Welcome to the Secret Number Game created by Nikki!"
# 2. Ask the user for their name and store it in a variable.
def get_input
  gets.chomp 
end
puts "What is your name?"
name = get_input
# 3. Personally greet the player by printing to the screen, "Hi player_name!
puts "Hi #{name}!"
#	 Let them know they have 3 guesses to guess the Secret Number that is between 1 and 10.
puts "You have 3 guesses to guess the Secret number that is between 1 and 10."
# 4. Create a new Integer variable called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.

3.downto(1) do |guesses_left|
end
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
secret_number=6
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
puts "Please make your first guess"
guess=get_input
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
if guess==6
	puts "You win! You may exit the game."
	exit

elsif guess > 6
	puts "Too high!"

elsif guess < 6
	puts "Too low!"
end 

if guess_left=2
	puts "You have #{guesses_left-1}."
end
if guess_left=1
	puts "You have #{guesses_left-1}."
end

#     1. If they guessed correctly, tell them they won and exit the
#        game.
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
if guesses_left==0
	puts "Game Over! The secret number was 6."
end
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################
