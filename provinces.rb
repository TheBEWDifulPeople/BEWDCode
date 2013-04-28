provinces = {

"Australian Capital Territory" => "ACT",

"New South Wales" => "NSW",

"Northern Territory" => "NT",

"Queensland" => "QLD",

"South Australia" => "SA",

"Tasmania" => "TAS",

"Victoria" => "VIC",

"Western Australia" => "WA"

}

array = provinces.keys
randProv = array[rand(array.size)]
puts "Whats the code for #{randProv}"
answer = gets.chomp
if answer == "quit"
	puts "Bye\nGame over"
elsif answer != provinces[randProv]
	puts "Game over"
else
	puts "You Win!" 
end