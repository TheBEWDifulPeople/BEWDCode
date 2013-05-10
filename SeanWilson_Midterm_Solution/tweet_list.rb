class TweetList
  attr_accessor :tweets
  @tweets = []
  def self.add_tweets(tweet)
    @tweets << tweet
  end
  def self.tweets
    @tweets
  end
end