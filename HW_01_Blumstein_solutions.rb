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
#   Let them know they have 3 guesses to guess the Secret Number that is between 1 and 10.
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
#    2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#           1. If they guessed a number too low, tell them that they need to
#              guess higher on their next guess.
#
#           2. If they guessed a number too high, tell them that they need to
#              guess lower on their next guess.
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

# 1. Welcome users to your game. Let them know you are the creator.

print "Welcome to the game. My name is Jonah, and I am the creator. "

# 2. Ask the user for their name and store it in a variable.

puts "What's your name?"

player_name = gets.chomp.capitalize

# 3. Personally greet the player by printing to the screen, "Hi player_name!
#   Let them know they have 3 guesses to guess the Secret Number that is between 1 and 10.

puts "Hi #{player_name}! You have 3 guesses to guess the Secret Number that is between 1 and 10."

# 4. Create a new Integer variable called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.

guesses_left = 3

# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.

puts "You have #{guesses_left} guesses left!"

# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.

secret_number = 7

# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).

puts "Make your first guess."

# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        game.
#
#    2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#           1. If they guessed a number too low, tell them that they need to
#              guess higher on their next guess.
#
#           2. If they guessed a number too high, tell them that they need to
#              guess lower on their next guess.
#
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.

for iteration_number in 1..3 do 
    guessed_number = gets.to_i

# If guess is 7
    if guessed_number == secret_number
      puts "Congratulations! You have won the game."
      break

# If guess is between 8 and 10
    elsif guessed_number > secret_number and guessed_number <= 10
      print "You have guessed too high. "
# If it's the third guess, write this message
       if guesses_left - iteration_number == 0
         puts "You have #{guesses_left - iteration_number} guesses left. Game over! The Secret Number is #{secret_number}."
# If it's the second guess, write this message
       elsif guesses_left - iteration_number == 1
         puts "You need to guess lower on your next guess. You have #{guesses_left - iteration_number} guess left."
# If it's the first guess, write this message
       else
         puts "You need to guess lower on your next guess. You have #{guesses_left - iteration_number} guesses left."
       end

# If guess is between 1 and 6
    elsif guessed_number < secret_number and guessed_number >= 0 
      print "You have guessed too low. "
       if guesses_left - iteration_number == 0
         puts "You have #{guesses_left - iteration_number} guesses left. Game over! The Secret Number is #{secret_number}."
       elsif guesses_left - iteration_number == 1
         puts "You need to guess higher on your next guess. You have #{guesses_left - iteration_number} guess left."
       else
         puts "You need to guess higher on your next guess. You have #{guesses_left - iteration_number} guesses left."
       end

# If guess is less than 1 or greater than 10
    else guessed_number > 10 or guessed_number < 1
      print "That number is not between 1 and 10. "
       if guesses_left - iteration_number == 0
         puts "You have #{guesses_left - iteration_number} guesses left. Game over! The Secret Number is #{secret_number}."
       elsif guesses_left - iteration_number == 1
         puts "Please guess a number between 1 and 10. You have #{guesses_left - iteration_number} guess left."
       else
         puts "Please guess a number between 1 and 10. You have #{guesses_left - iteration_number} guesses left."
       end
    end
end


# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
