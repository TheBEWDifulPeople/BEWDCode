months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

months.each do |month|
	if month.start_with?("J")
		print	
	else
		print "#{month} "
	end
end
