# A simple example... Print the names of the books in A Song of Ice and Fire
a_song_of_ice_and_fire = {"Book 1" => "A Game of Thrones", "Book 2" => "A Clash of Kings", "Book 3" => "A Storm of Swords", "Book 4" => "A Feast for Crows", "Book 5" => "A Dance With Dragons"}

a_song_of_ice_and_fire.each {|book_number, book| puts "#{book_number} of A Song of Ice and Fire is #{book}."}

swords = {Eddard: "Ice", Jon: "Longclaw", Joffrey: "Widows Wail", Tarly: "Heartbane"}

swords.each{|owner, sword| puts "#{sword} belonged to #{owner}"}



scifi_writers = {"George RR Martin" => "A Song of Ice and Fire", "JRR Tolkien" => "The Lord of the Rings", "Tad Williams" => "Memory, Sorrow, and Thorn"}
scifi_writers.each {|writer, series| puts "#{writer} wrote a great series of books called #{series}"}

# What about an array of hashes?

asoiaf_info = [
	{"title" => "A Game of Thrones", "rank" =>  "2", "best_pov" => "Eddard", "best_line" => "\"Fear cuts deeper than swords.\""},
	{"title" => "A Clash of Kings", "rank" => "3", "best_pov" => "Tyrion", "best_line" => "\"He who hurries through life hurries to his grave.\""},
	{"title" => "A Storm of Swords","rank" => "1", "best_pov" => "Jaime", "best_line" => "\"The greatest fools are ofttimes more clever than the men who laugh at them.\""},
	{"title" => "A Feast for Crows", "rank" => "5", "best_pov" => "Jaime", "best_line" => "\"The man is as useless as nipples on a breastplate.\""},
	{"title" => "Dance with Dragons", "rank" => "4", "best_pov" => "Jon", "best_line" => "\"Love is madness, and lust is poison.\""}
]

asoiaf_info.each do |info|
	puts "In #{info['title']}, which is ranked number #{info['rank']}, the best character is #{info['best_pov']} and the best line is #{info['best_line']}"
end

puts "This print out came from a .each method run on a hash, another hash, another hash, and an array of hashes"

the_north = {"capital" =>  "Winterfell", "climate" => "Cold and windy, with much snow", "ruling_house" => "Stark", "words" => "Winter is coming.", "house_family_members" => ["Arya", "Bran", "Rickon", "Robb", "Sansa"]} 


puts "#{the_north['capital']} is the capital of The North, which is #{the_north['climate']}, and is ruled by the House #{the_north['ruling_house']}, whose words are #{the_north['words']}.\n The family members are: "
the_north["house_family_members"].each{|member| puts member}
