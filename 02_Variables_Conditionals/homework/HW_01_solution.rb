###############################################################################
#
# Back-End Web Development - Secret Number 1 Solution
#
###############################################################################

puts "\nWelcome to the Secret Number Game!"

first_name = "Rachel"
last_name = "Ober"

puts "Created by " + first_name + " " + last_name

puts "\nWhat is your name?"

player_name = $stdin.gets.chomp

puts "Hi, #{player_name}! You have 3 guesses to guess the Secret Number between 1 and 10"

guesses_left = 3

secret_number = 5 # This number can change

puts "\nYou have #{ guesses_left } guesses left!"

puts "Please make your first guess:"

players_guess = $stdin.gets.chomp.to_i

if secret_number == players_guess
  puts "You win! The number was #{secret_number}."
  exit
elsif secret_number > players_guess
  puts "Make your next guess higher than #{players_guess}"
elsif secret_number < players_guess
  puts "Make your next guess lower than #{players_guess}"
end

guesses_left -= 1

puts "\nYou have #{ guesses_left } guesses left!"

puts "Please make your second guess:"

players_guess = $stdin.gets.chomp.to_i

if secret_number == players_guess
  puts "You win! The number was #{secret_number}."
  exit
elsif secret_number > players_guess
  puts "Make your next guess higher than #{players_guess}"
elsif secret_number < players_guess
  puts "Make your next guess lower than #{players_guess}"
end

guesses_left -= 1

puts "\nYou have #{ guesses_left } guesses left!"

puts "Please make your final guess:"

players_guess = $stdin.gets.chomp.to_i

if secret_number == players_guess
  puts "You win! The number was #{secret_number}."
else
  puts "You lost! :-( The number to guess was #{secret_number}."
end
