require 'lib/person'
require 'lib/secret_number'

class Game
  attr_accessor :secret, :player, :guesses_left

  def initialize(player_name)
    @secret = SecretNumber.new
    @player = Person.new(player_name)
    @guesses_left = 3
  end

  def start
    puts "\nWelcome #{@player.name}! You get 3 chances to guess the Secret Number between 1 and 10.\n"

    while @guesses_left != 0
      get_guess
      break if @guess == @secret.number
    end
  end

  private

  def get_guess
    puts "What is your guess?"
    @guess = gets.to_i
    @guesses_left -= 1
    puts `clear`
    check_guess(@guess)
  end

  def check_guess(guess)
    if guess == @secret.number
      puts "┏(-_-)┛┗(-_-﻿ )┓┗(-_-)┛┏(-_-)┓"
      puts
      puts "CONGRATULATIONS! YOU WIN!!!"
      puts
      puts "┏(-_-)┛┗(-_-﻿ )┓┗(-_-)┛┏(-_-)┓"
    elsif guess != @secret.number && guesses_left > 0
      if guess < @secret.number
        puts "You guessed #{guess}, Guess higher! Number of guesses left: #{guesses_left}"
      elsif guess > @secret.number
        puts "You guessed #{guess}, Guess lower! Number of guesses left: #{guesses_left}"
      end
    else
      puts "Game Over! The secret number was #{@secret.number}"
    end
  end
end
