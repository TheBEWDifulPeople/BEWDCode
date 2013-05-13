# JSON Strings resemble hashes in ruby. Ruby has a really convinent way to convert them from string to hash
# First we have to require the Ruby JSON library. This is built in to Ruby, it just isn't loaded by default
# We use the 'require' keyword to do this.
require 'json'
require 'rest-client'

json_stories = RestClient.get'http://mashable.com/stories.json'


# We then use the newly imported JSON class' #load method

stories = JSON.load(json_stories)

# Now we just bring in the code from the collection management code along
stories.each do |show|
  puts "#{show['new']} follows the story of #{show['title']}"
end

# Done!
