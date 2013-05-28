# MIDTERM REQUIREMENTS
# Create a command line based application that fulfills these criteria:

## Takes user input and handles bad input (i.e. You expect numbers and they give you a letter).
## Connects to a 3rd party api where the call varies based on what the user gives you.
## Must be object oriented. You must instantiate modeled classes. The only file that can run without classes is your runner.
## Push code on Github and create a pull request on the class repo.

############################################################################

require_relative 'lib/remote_source'

def show_message(message)
  puts message
end

def get_input
  gets.chomp 
end

def get_choice
  gets.to_i
end

def show_menu
  show_message "What would you like to do:"
  show_message "1. Search Tweets on Twitter."
  show_message "2. Exit"
end

def add_tweets
  RemoteSource.get.each do |tweet|
  end
end


show_message("Welcome to the Tweet searcher. A midterm project by Ely Greenberg.")
show_menu
loop do
  choice = get_choice
  if choice == 1
    add_tweets
    show_menu
  elsif choice ==  2
    break
  else
    show_message "Invalid Selection"
    show_menu
  end
end

puts "Thank you for searching the TWeets!"
