class UserInterface

search = "search"

def tell_user(message)
  puts message
end

def get_user_input
   	search = gets.chomp.gsub("+", "%20")
end

def show_and_rate(tweets)	
  
  tweets.each do|tweet|

  	#Show tweet
    puts "\n\n#{tweet[:name]} tweeted \n\n #{tweet[:text]}\n\n"

    #Prompt the user to rate the tweet's relevance 
    puts "Rate the relevance of #{tweet[:name]}\'s tweet on a scale of 1 to 10.\n"
    
    #Handle bad input
    loop do
      relevance = gets.to_i
	
      if relevance <= 0 || relevance > 10
	    puts "Please enter a number between 1 and 10.\n"
		next
	  else 
		tweet[:relevance] = relevance
		puts "\n\n"
		break 
	  end

	end

	#Confirm the user's rating
	puts "You gave #{tweet[:name]}\'s tweet a relevance of #{tweet[:relevance]}!\n"

  end
end

end

