
puts "enter number"
guess = gets.chomp.to_i


if guess < 5
	puts "less than 5"
elsif guess > 5
	puts "larger than 5"
else
	puts "the number is 5"			
end

