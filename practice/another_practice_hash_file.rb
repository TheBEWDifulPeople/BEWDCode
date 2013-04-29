mayors = {monroe: "Joe", chester: "Tim", middletown: "Henry", goshen: "Jay"}

mayors.each {|town, dude| puts "The mayor of #{town} is #{dude}"}

towns_info = [
	{"name" => "monroe", "dob" => "1789", "sigil" => "Cross"},
	{"name" => "chester", "dob" => "1812", "sigil" => "Swaztika"},
	{"name" => "middletown", "dob" => "1809", "sigil" => "rainbow"},
	{"name" => "goshen", "dob" => "1790", "sigil" => "Ankh"}
]

towns_info.each do |info|
	puts "The town of #{info['name']}, which was founded in #{info['dob']}, has a #{info['sigil']} as its sigil."
end

#asoiaf_info.each do |info|
#        puts "In #{info['title']}, which is ranked number #{info['rank']}, the best character is #{info['best_pov']} and the best line is #{info['best_line']}}"
#end

