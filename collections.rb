#collections 

#Arrays
=begin
my_array = ["Me", "You", "Him", "Her"]
my_array[0] # => "Me"
my_array[1] # => "You"
my_array[-1] # => "Her"
puts my_array
=end

=begin
my_array = ["Me", "You", "Him", "Her"]
my_array.reverse 
=end


#Hashes 

my_array.first 
my_array.last
my_array.push("String")
my_array >> "String"
my_array.unshift("String")
my_array.pop #remove last string 
my_array.include? "String"
my_array.sort #sort by alphabetical order
my_array.delete "String"
my_array.shuffle #Shuffle order 
my_array.uniq #removes repeated strings 

#method_name! change array permanently 
my_array.join #mush strings together 
my_array.join(", ")

str_my_array = my_array.join(", ")

str_my_array.split(", ")

