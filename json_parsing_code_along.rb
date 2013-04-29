# JSON Strings resemble hashes in ruby. Ruby has a really convinent way to convert them from string to hash
# First we have to require the Ruby JSON library. This is built in to Ruby, it just isn't loaded by default
# We use the 'require' keyword to do this.
require 'json'
json_tv_shows = '[{"show_name":"Doctor Who","protagonist":"The Doctor and his companions"},{"show_name":"Buffy The Vampire Slayer","protagonist":"Buffy and the Scooby Gang"},{"show_name":"The Walking Dead","protagonist":"Rick and his fellow survivors"}]'

# We then use the newly imported JSON class' #load method

tv_shows = JSON.load(json_tv_shows)

# Now we just bring in the code from the collection management code along
tv_shows.each do |show|
  puts "#{show['show_name']} follows the story of #{show['protagonist']}"
end

# Done!
