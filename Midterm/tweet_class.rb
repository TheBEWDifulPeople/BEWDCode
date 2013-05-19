class ThirdPartyAPI

def get_tweets
  tweets_as_json = RestClient.get("http://search.twitter.com/search.json?q=#{search}")
  tweets = JSON.load(tweets_as_json)
  tweets_array = tweets["results"]

  length = tweets_array.length
  length -= 1

  0.upto(length) do |num|
    user_name = tweets_array[num]['from_user']
    text = tweets_array[num]['text']
 
  end
end

end

   puts "#{user_name} tweeted \n\n\"#{text}\"\n\n\n\n"