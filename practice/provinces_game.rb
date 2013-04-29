provinces = {"Australian Capital Territory" => "ACT", "New South Wales" => "NSW", "Northern Territory" => "NT", "Queensland" => "QLD", "South Australia" => "SA", "Tasmania" => "TAS", "Victoria" => "VIC", "Western Australia" => "WA"}

provinces_array = ["Australian Capital Territory", "New South Wales", "Northern Territory", "Queensland", "South Australia", "Tasmania", "Victoria", "Western Australia"]

random = rand(8)

# I am just leaving the next two lines in b/c they helped in the process of coding.
# puts random
# puts provinces_array[random]

province_name = provinces_array[random]

puts "This is a random province name: #{province_name}"
puts "What is the province code of #{province_name}?"

input = gets.chomp

# I am leaving the next line in b/c it helped in the process of coding.
# puts "This was your answer: #{input}"

if input.upcase == provinces[province_name]
	puts "You win!"
elsif input.downcase == "quit"
	puts "Bye!"
	puts "Game Over."
else
	puts "Game Over."
end
