# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Adding a Whole bunch of stories"
Story.create [
  {
    title: "Deer running wild in Central Park", 
    link: "http://google.com", 
    upvotes: 12,
    category: "Nature"
  },
  {
    title: "Fish Jumping Out of Hudson River", 
    link: "http://google.com", 
    upvotes: 7,
    category: "Nature"
  },
  {
    title: "Aliens Steal Food from Flea Markets", 
    link: "http://google.com", 
    upvotes: 14,
    category: "Astronomy"
  },
  {
    title: "Oh, The Rangers", 
    link: "http://google.com", 
    upvotes: 4,
    category: "Sports"
  },
  {
    title: "Better than the Mets", 
    link: "http://google.com", 
    upvotes: 12,
    category: "Sports"
  }]