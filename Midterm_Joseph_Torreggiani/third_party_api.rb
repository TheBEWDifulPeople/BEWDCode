class TwitterAPI

def get_tweets_for(search)
  
  @tweets = Array.new

  tweets_as_json = RestClient.get("http://search.twitter.com/search.json?q=#{search}")
  
  tweets = JSON.load(tweets_as_json)
  
  tweets_array = tweets["results"]
  
  length = tweets_array.length
  
  length -= 1
  
  0.upto(length) do |num|
    
    tweet = {}

    tweet[:name] = tweets_array[num]['from_user']

    tweet[:text] = tweets_array[num]['text']

    tweet[:relevance] = "N/A"

    @tweets.push(tweet) 

  end

  @tweets

end

end
