
filename = 'test123.txt'
test_string = 'sdgfdsgdgfdgd'

File.open filename, 'w' do |f|
	f.write test_string
end	

read_string = File.read filename
puts (read_string = test_string)

# def ask question
# 	while true
# 		puts question
# 		reply = gets.chomp.downcase

# 		if (reply == 'yes' || reply == 'no')
# 			if reply == 'yes'
# 				answer = true
# 			else
# 				answer = false
# 			end
# 			break		
# 		else
# 		 puts 'answer yes or no'	

# 		end

# 	end	
# answer

# end

# ask 'q1'
# wet_beds = ask 'wet bed?'
# ask 'q3'
# ask 'q4'

# puts wet_beds

# def say_moo n
# 	puts 'mooo'*n
# 	'yellow submarine'
# end	


# x = say_moo 3
# puts x.capitalize

# names = ['c','b', 'a', 'd']

# puts names
# puts ''
# puts names.sort
# puts ''
# puts names.reverse


# puts names.last
# puts names.length
# names.push 'asdsadas'

# puts names

# puts names.pop 
# puts names.pop 

# array1 = ['asf', 'sf', 'asfsd']

# array1.each do |x|
# 	puts x
# end


# n = 99
# while n >= 1
# 	puts "#{n} beer on the wall"
# 	n -= 1
# end

# while true
# 	puts 'add something'
# 	input = gets.chomp.downcase
# 	#puts input
# 	if input == 'bye'
# 		break
# 	end	
# end

# # puts 'add something'
# input = gets.chomp.downcase
# while input != 'bye'
# 	puts input
# 	input = gets.chomp.downcase
# end
# puts 'come again soon'

# line_width = 30
# puts "table of contents".center(line_width)
# puts "Ch1: Getting started".ljust(line_width) + "page 1".rjust(line_width) 


# puts "your mame?"
# your_name = gets.chomp
# puts "you name is #{your_name.length.to_s} long"


# puts "enter number"
# guess = gets.chomp.to_i


# if guess < 5
# 	puts "less than 5"
# elsif guess > 5
# 	puts "larger than 5"
# else
# 	puts "the number is 5"			
# end

