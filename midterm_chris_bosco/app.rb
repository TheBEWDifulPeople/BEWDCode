require 'rest-client'
require 'nokogiri'

require_relative 'lib/craigslist_source'
require_relative 'lib/input'

craigslist_source = CraigslistSource.new

input = Input.new craigslist_source

input.welcome

input.request_subdomain

input.request_rent

result = craigslist_source.make_request

puts result
