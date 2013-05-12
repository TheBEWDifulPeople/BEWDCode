require_relative 'remote_source'
require_relative 'movie_board'
require_relative 'movie'
require_relative 'remote_source_list'

def show_message(message)
  puts message
end

def get_input
  gets.chomp.gsub(" ", "+")
end

def get_choice
  gets.to_i
end

def show_menu
  show_message("Would you like to:")
  show_message("1. Search for a Movie's Information.")
  show_message("2. Retrieve a list.")
  show_message("3. Exit")
end

def ask_for_name_and_search
  show_message("What movie would you like information for?")
  show_message("(five results returned)")
  movie = get_input
  RemoteSource.get(movie).each do |movie|
	MovieBoard.add_movie(movie)
  end 
end

def show_menu_lists
  show_message("What kind of a list:")
  show_message("1. Box Office.")
  show_message("2. In Theatres.")
  show_message("3. Opening.")
  show_message("4. Upcoming.")
end

def show_movie_board
  MovieBoard.movies.each do |movie|
    show_message(movie)
  end
end

def get_list(list_type)
  RemoteSourceList.get(list_type).each do |movie|
        MovieBoard.add_movie(movie)
  end
end

def goodbye
  show_message("**********************************************************************")
  show_message("Thank you for using the Rotten Tomatoes Search CLI Application! Good Bye!")
end

show_message("Welcome to the Rotten Tomatoes Search CLI Application!")
show_menu
loop do
  choice = get_choice
  if choice == 1
    ask_for_name_and_search
    show_movie_board
    goodbye
    break
  elsif choice == 2
    show_menu_lists
    choice = get_choice
	case choice
	when 1
		list_type = "box_office"
		get_list(list_type)
		show_movie_board	
		goodbye
		break
	when 2
		list_type = "in_theaters"
		get_list(list_type)
		show_movie_board
		goodbye
		break
	when 3
		list_type = "opening"
		get_list(list_type)
		show_movie_board
		goodbye
		break
	when 4
		list_type = "upcoming"
                get_list(list_type)
                show_movie_board
                goodbye
		break
	else
		show_message "Invalid Selection"
		show_menu_lists		
	end

  elsif choice == 3
	goodbye	 	
	break
  else 
    show_message "Invalid Selection"
    show_menu
  end 
end  
