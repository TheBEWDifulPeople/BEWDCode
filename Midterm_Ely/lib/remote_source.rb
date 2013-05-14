require 'json'
require 'rest-client'


class RemoteSource


  def self.get

  	puts "Enter a search topic of no more than six (6) letters (no spaces):"
	search = gets.chomp.gsub(" ", "%20")

	loop do 
		if search.length > 6
			puts "Yo! Enter a search topic of no more than six (6) letters (no spaces):"
			search = gets.chomp.gsub(" ", "%20")
		else break 
		end
	end

    tweets = JSON.load(RestClient.get("http://search.twitter.com/search.json?q=#{search}"))
    tweets["results"].each do |tweet|
  	puts "Tweet from #{tweet['from_user']}: #{tweet['text']}"
	end

  end
end

