require 'json'
require 'rest-client'
require_relative 'movie'

class RemoteSource
  def self.get(movie_name)
	movie_name_json = RestClient.get("http://api.rottentomatoes.com/api/public/v1.0/movies.json?apikey=2y2cb9atvjr4bp2s3kmyrkp9&q=#{movie_name}&page_limit=5")
	movie_result_hash = JSON.load(movie_name_json)
	movie_result_hash["movies"].map do |info|
	if info["abridged_cast"] == []
		Movie.new(info["title"], info["year"], info["mpaa_rating"], "Not Listed")	
	else
		Movie.new(info["title"], info["year"], info["mpaa_rating"], info["abridged_cast"][0]["name"]) 
	end
  end 
 end
end
    
