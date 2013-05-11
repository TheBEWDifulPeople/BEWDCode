# Write a game which displays a random province name and asks for its 
# province code. If the user guesses right, display "You win!". If the user 
# guesses wrong, end the game and display "Game Over." If the user enters "quit", 
# then display "Bye!" before displaying "Game Over." 

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

provinces.each do |i|
puts provinces[i].rand
puts "What's this province code?"
guess = gets.chomp
if guess = [1],
	puts "Yay you won!"
elsif guess = "quit"
	puts "Bye. Game Over"
else
	puts "Game Over."
end
