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

provinces.rnd do |ran_province, code|
puts "What is the province code for #{ran_province}?"
user_guess = gets
if code == user_guess
   puts "You win!"
end
end
