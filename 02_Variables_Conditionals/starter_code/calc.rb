puts 1+2
puts 3*4
puts (24*365)
puts (60*24)*(365*10)
puts (60*60*24)*(365*30)

my_string = "say my name"
puts my_string
puts my_string

name = "Marija Ringwelski"
puts "My name is " + name + '.'
var1 = 2
var2 = '5'
puts var1.to_s + var2
puts var1 + var2.to_i

puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

puts 'Hello there, what\'s your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
puts 'Pleased to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'


puts 'What is your fav number?'
fav_number = gets.chomp.to_i
bet_number = fav_number + 1
puts "that is okay, but is not " +bet_number.to_s+ ' bigger and better?'


