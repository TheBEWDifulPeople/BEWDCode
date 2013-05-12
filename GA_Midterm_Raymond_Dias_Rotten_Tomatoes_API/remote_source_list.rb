require 'json'
require 'rest-client'
require_relative 'movie'

class RemoteSourceList
  def self.get(list_type)
	list_json = RestClient.get("http://api.rottentomatoes.com/api/public/v1.0/lists/movies/#{list_type}.json?apikey=2y2cb9atvjr4bp2s3kmyrkp9")
	list_hash = JSON.load(list_json)
	
	list_hash["movies"].map do |info|
		if info["abridged_cast"] == []
		Movie.new(info["title"], info["year"], info["mpaa_rating"], "Not Listed")	
		else
		Movie.new(info["title"], info["year"], info["mpaa_rating"], info["abridged_cast"][0]["name"]) 
		end
	end
  end 
end

