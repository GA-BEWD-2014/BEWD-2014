###############################################################################
#
# Back-End Web Development - Secret Number 1 Solution
# Here is another solution to homework 1.
################################################################################

puts "Welcome! This game is brought to you by Eddie Washington."
puts "Please provide your name:"

name = gets.chomp.capitalize #Capitalize method will uppercase the first letter of the input
puts `clear` #Clears the screen so that the program keeps running at the top of the screen
puts "Hi #{name}! You get 3 chances to guess the Secret Number between 1 and 10"

guesses_left = 3

puts "You have #{guesses_left} guesses left!"

secret_number = 6

puts "Give me your first guess:"

loop do #The program will repeat until I tell it when to break
  guess = gets.to_i #Used method to_i to store as an integer because gets.chomp inherently stores a string
  guesses_left -= 1 #The  assignment operator -= decrements the guesses_left number by 1
  puts `clear` #Clears the screen so that the program keeps running at the top of the screen
  if guess == secret_number
    puts "You win!"
    break
  elsif guess != secret_number && guesses_left != 0 #Using the logical operator && I can check for more than one condition
   if guess < secret_number
      puts "You guessed #{guess}, Guess higher! Number of guesses left: #{guesses_left}"
    elsif guess > secret_number
      puts "You guessed #{guess}, Guess lower! Number of guesses left: #{guesses_left}"
    end
  else
    puts "Game Over! The secret number is #{secret_number}."
    break
  end
end























