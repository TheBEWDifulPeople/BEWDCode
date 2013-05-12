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


#Welcome the user to the game, introduce yourself, and ask the user for his/her name.

puts "Welcome to this game, user! I am THE CREATOR!"

puts "What is your name?"
name = gets.chomp

#Greet the user, and tell him what the rules are.
puts "Hi #{name}! You have three guesses to guess the Secret Number that is between 1 and 10."

#create the counter of guesses which will deincremented after a wrong guess.
guesses_left = 3

#Creating the loop which will only last as long as the user hasn't already guessed incorrectly three times.

while guesses_left > 0 do

#Telling the user how many guesses he/she has left. Must use a conditional because if there is only one "guess" the plural "guesses" should not be used.

if guesses_left != 1 
	puts "You have #{guesses_left} guesses left."
else
	puts "You have #{guesses_left} guess left. This is your last chance!"
end

#Setting the secret number.

secret_number = 6

#prompting the user to make a guess.

puts "Please make a guess."
answer = gets.chomp 

#casting the string into an integer

guess = answer.to_i

#This is where we compare the user's guess to the secret number. We tell him/her if he/she should guess higher or lower next time.
case guess
	when 1 .. 5 
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
				puts
				puts "That's not a number between 1 and 10! You are WASTING your guesses!!!"
			end	
			if guesses_left == 0
                       		puts 
			        puts "Game Over! The secret number was \"6\"."
                        end

end
end	
