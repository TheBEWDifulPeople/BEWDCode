require 'json'
require 'rest-client'

puts "Enter your search: "
search = gets.chomp.gsub(" ", "%20")
get_as_json = RestClient.get("http://search.twitter.com/search.json?q=#{search}")
tweets = JSON.load(get_as_json)

tweets["results"].each do |tweet|
	puts "Tweets from #{tweet['from_user']}: #{tweet['text']}"
end