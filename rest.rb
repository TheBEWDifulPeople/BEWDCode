require 'rest-client'
require 'json'

puts "Enter your search:"
search = gets.chomp.gsub(" ", "%20")
get_as_json = RestClient.get("http://search.twitter.com/search.json?q=#{search}")
tweets = JSON.load(get_as_json)

tweets["results"].each do |tweet|
	puts "Tweet from #{tweet['from_user']}: #{tweet['text']}"
end