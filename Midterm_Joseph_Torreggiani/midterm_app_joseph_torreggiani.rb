require 'rest-client'
require 'json'
load 'third_party_api.rb'
load 'user_interface.rb'

#Create an array to store the tweets
tweets = []

#Create an instance of the UserInterface class
ui = UserInterface.new

#Create an instance of the TwitterAPI class
twitter_api = TwitterAPI.new

#Call the tell_user method to welcome the user
ui.tell_user("\n\nWelcome to TweetSearch. The twitter search for minimalists.\n\n")

ui.tell_user("Press Control-C to exit.\n\n")

#Call the tell_user method to prompt the user to rate each tweet 
ui.tell_user("Rate each tweet's relevance on a scale of 1 to 10\n\n")

#Call the tell_user method to prompt the user to enter a search
ui.tell_user("Enter your search to explore the twitterverse!\n\n")

#Initialize a search variable with the get_user_input method 
search = ui.get_user_input

#Call the get_tweets_for(search) method to print all the matching tweets
tweets = twitter_api.get_tweets_for(search)

ui.show_and_rate(tweets)

ui.tell_user("\n\nYou have reached your maximum for the day!\n\n")



