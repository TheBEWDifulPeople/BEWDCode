class Tweet
  attr_accessor :user, :user_name, :tweet_text, :time
  def initialize (user, user_name, tweet_text, time)
    @user = user
    @user_name = user_name
    @tweet_text = tweet_text
    @time = time
  end
  def to_s
    puts "#{user} (#{user_name}) tweeted: #{tweet_text}\n#{time}"
  end
end