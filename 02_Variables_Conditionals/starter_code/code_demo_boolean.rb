#Boolean - Student's File
#Let the computer do the work for you!

puts "Is 7 greater than 8?"
if 7 > 8
		puts true
	else
		puts false
end

puts "Is 8 x 77 greater than 600?"
if (8 * 77) > 600
	puts true
else
	puts false
end


puts "Is 1 equal to (7 - 6)?"

if 1 == (7-6)
	puts true
else
	puts false
end


puts "Is 77 greater than 50 AND (88 / 3) less than 30?"
if 77 > 50 and (88/3)<30
	puts true
else
	puts false
end


puts "Is the length of the word 'wheelbarrow' more than 10 characters long?"
if "wheelbarrow".length > 10
	puts true
else
	puts false
end

puts "Are the amount of seconds in an hour greater than or equal to 3000?"
if (60 ==3000) or > 3000
	puts true
else
	puts false
end

puts "Does the word 'slaughter' include the word laughter?"
if "slaughter".include? "laughter"
	puts true
else
	puts false
end
