puts 'Hello player! Welcome to Marija\'s Magnificant Test of Psychic Abilities game! You will have 3 attempts to guess a number, 1 through 10. What is your name?'
name = gets.chomp
puts 'Hello, ' + name.capitalize + '!'

puts 'Let us begin! I am thinking of a number between 1 and 10, please guess what number this is!'

number = (rand(1..10))
guess = gets.to_i
attempts = 3

	if guess == number
		puts 'You are correct, the number is ' + number.to_s + '!'
	elsif guess < number
		puts "Wrong, aim higher and please try again!"
	elsif guess > number
		puts "Wrong, aim lower and please try again!"
	end
end



