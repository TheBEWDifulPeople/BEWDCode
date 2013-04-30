def pluralize(check_num)
	(check_num == 1 ?  '' : "s")
end

def num_of_bottles(bottles)
	(bottles == 0 ? "no more" : bottles.to_s)
end

99.downto(1) do |bottles|
	puts num_of_bottles(bottles).capitalize + " bottle"+ pluralize(bottles) +" of beer on the wall, #{bottles} bottle"+ pluralize(bottles) +" of beer. Take one down and pass it around, "+ num_of_bottles(bottles-1) + " bottle"+ pluralize(bottles-1) +" of beer on the wall."
end