require "rest-client"
require "json"

puts "What would you like to search on Twitter?"

search = gets.chomp
#I am not sure how to specify input so I can't handle bad input.

tweets_as_json = RestClient.get("http://search.twitter.com/search.json?q=#{search}")
tweets = JSON.load(tweets_as_json)

tweets["results"].each do |tweet|

  puts "#{tweet['from_user']}: #{tweet['text']}"

end