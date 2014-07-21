# Marija Ringwelski Homework Assignment answers:

puts 'Hello player! Welcome to Marija\'s Magnificant Test of Psychic Abilities game! What is your name?'
name = gets.chomp.capitalize # .capitalize will make the first letter of the name capitalized.
puts 'Hello, ' + name + '!'
puts 'Let us begin! You get 3 guesses. I am thinking of a number between 1 and 10, please guess what number this is!'
guess = gets.to_i # .to_1 method will allow for the conversion of the guess into an integer

number = (rand(1..10))
# number = (rand(1..10)) # rand(1..10) will privide a range between 1 and 10. rand(10) might include zero and we dont want that.
guess_remainder = 3 # this prompt will allow for the number of attempts the respondent can make.

# this command will allow for repeated actions of the program for guess_remainder number indicated.
while guess_remainder > 0

	if guess < number
		# .to_s will return a string for guess_remainder.
		puts "Wrong, aim higher and please try again! Number of attempts left: " + guess_remainder.to_s + '.' 
		guess = gets.to_i
	elsif guess > number
		# .to_s will return a string for guess_remainder.
		puts "Wrong, aim lower and please try again! Number of attempts left: " + guess_remainder.to_s + '.' 
		guess = gets.to_i
	end
	guess_remainder -= 1 # -= 1 will allow the program to subtract by one guess after each response.

end

if guess == number
	puts 'You are correct, the number is ' + number.to_s + '!'

else 
	# .to_s will return a string for guess_remainder.		
	puts "Sorry, you lost and have zero psychic abilities! The number was " + number.to_s + '.' 
end



