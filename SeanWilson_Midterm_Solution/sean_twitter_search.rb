require 'active_support'

require_relative 'twitter_search_result'
require_relative 'tweet'
require_relative 'tweet_list'
require_relative 'search'

def show_menu
  puts "Would you like to:\n
  1. Look at my most recent tweets\n
  2. Get a surprise search inquiry\n
  3. Search tweets yourself\n
  4. Look up most recent tweets about Ryan Gossling and his distaste for cereal\n
  5. Exit\n
  Choose wisely:"
end

def search_tweets
  TwitterSearchResult.get.each do |tweet|
    TweetList.add_tweets tweet
  end
end

def show_tweets
  TweetList.tweets.each do |x|
    puts x
  end
end

def search_this(x)
  @@searching = x
end

def humanize (y)
  ActiveSupport::Inflector.humanize(y)
end


# def search_this(search)
#   @@search = search
# end


suprises_available = ["NyanCat", "Philosorapter", "Another%20Reddit%20Example", "Cheese%20Burger", "nailedit"]


# Welcoming the user and intoducing the application
puts "Welcome to Sean's Twitter Search\nIts kind of like searching on twitter, but with a lot less functionality!"
show_menu
loop do
  user_input = gets.chomp.to_i
  if user_input == 1
    search_this("sean_a_wilson")
    search_tweets
    show_tweets
  elsif user_input == 2
    suprise = suprises_available.sample
    suprise_read = humanize(suprise)
    puts "You're suprise search is #{suprise_read}"
    search_this(suprise)
    search_tweets
    show_tweets
  elsif user_input == 3
    puts "Alright, what would you like to search on Twitter?"
    user_search = gets.chomp.gsub(" ", "%20")
    search_this(user_search)
    search_tweets
    show_tweets
  elsif user_input == 4
    search_this("Ryan%20Gossling%20cereal")
    search_tweets
    show_tweets
  elsif user_input == 5
    break
  else
    puts "Invalid Selection"
    show_menu
  end
end

puts "Thanks for using this thing!"
exit


