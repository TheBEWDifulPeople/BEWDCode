require 'json'
require 'rest-client'
require 'domainatrix'
require 'pp'

class Company
  
  def initialize(user_input)
    company_url = self.checkInput(user_input)
    if company_url
      self.doSearch(company_url)
    end
  end

  def checkInput user_input
    user_input = user_input.gsub("http://","")
    uri = Domainatrix.parse('http://'+user_input)
    if uri.domain.length > 0
      return uri.domain+'.'+uri.public_suffix
    else
      puts 'The domain name you entered was not a valid domain name.'
      return nil
    end
  end

  def doSearch company_url
    begin
    result = RestClient.get("https://api.angel.co/1/startups/search?domain="+company_url)
    rescue Exception => msg  
      puts "That company could not be found - please try again:"
    end

    if(result)
      json_result = JSON.load(result)
      puts json_result['product_desc']
    end
  end

end

puts "Welcome to Angel List Search"

loop do
  puts "Please enter the domain name of a start-up company (e.g. generalassemb.ly):"
  user_input = gets.strip
  if user_input == 'exit'
    exit
  else
    Company.new(user_input)
  end
end