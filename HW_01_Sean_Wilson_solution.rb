# Sean Wilson - HW_01

# Welcoming the user
puts "Welcome to my game. I am the creator, Sean"

# Creating the variable for the player's name and introducing the game
puts "What is your name"
player_name = gets.chomp
puts "Hi #{player_name}, You will have 3 guesses to guess the Secret Number that is between 1 and 10"

# Creating the guesses_left variable, secret number variable and telling them how many guess they have
guesses_left = 3
puts "You have #{guesses_left} guesses left."
secret_number = 5

# Starting the game by asking their guessess and processing it
puts "Take your first guess"
first_guess = gets.chomp

# Processing first guess
if first_guess.to_i == secret_number.to_i
  puts ("You have won")
  exit
else
  guesses_left = guesses_left - 1
  puts "#{player_name}, you have guessed incorrectly, you have #{guesses_left} more guesses left."
  if first_guess.to_i < secret_number.to_i
      puts "Your guess was too low"
  else
      puts "Your guess was too high"
  end
end

# Second guess
puts "Go ahead and take your second guess"
second_guess = gets.chomp
if second_guess.to_i == secret_number.to_i
  puts ("You have won")
  exit
else
  guesses_left = guesses_left - 1
  puts "#{player_name}, you have guessed incorrectly, you have #{guesses_left} more guesses left."
  if second_guess.to_i < secret_number.to_i
      puts "Your guess was too low"
  else
      puts "Your guess was too high"
  end
end

# Third guess
puts "Try one last time!"
third_guess = gets.chomp
if third_guess.to_i == secret_number.to_i
  puts ("You have won")
  exit
else
  guesses_left = guesses_left - 1
  puts "#{player_name}, you have guessed incorrectly, you have #{guesses_left} more guesses left."
  if third_guess.to_i < secret_number.to_i
      puts "Your guess was too low"
  else
      puts "Your guess was too high"
  end
end

# End of game, they lost
puts "Game Over, the secret number is #{secret_number}"


