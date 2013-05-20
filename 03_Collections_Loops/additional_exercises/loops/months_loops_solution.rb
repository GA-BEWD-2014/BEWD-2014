################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Loops
# Learning Objective: Introduce loops and create a reference for students.
#
################################################################################


# data to be used in these exercises

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

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


# 1. Display each province, followed by its abbreviation, each on its own line
puts "\n--------------------" # line to distinguish exercise output

provinces.each do |state, code|
	puts state + " " + code
end

# 2. Using the .each method, display the months in the second quarter of the year, in a single row
puts "\n--------------------" # line to distinguish exercise output

(3..5).each do |index|
	print months[index] + " "
end

# 3. Display the current year, followed by the third quarter months, and the same for the next two years, as shown
# 
# 2012: July August September
# 2013: July August September
# 2014: July August September
#
# there are many different ways you could do this, but you will need to nest one loop inside another.
# for this exercise, do not use the .each method in either loop
puts "\n--------------------" # line to distinguish exercise output

year = 2012
month = 6
loop do
	break if year == 2015
	print "#{year}: "
	year = year + 1
	while month < 9
		print "#{months[month]} "
		month = month + 1
	end
	print "\n"
	month = 6
end