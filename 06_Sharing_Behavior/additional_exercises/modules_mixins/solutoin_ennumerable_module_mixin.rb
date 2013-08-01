################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 6.2
#
################################################################################
#
# 1. Create a new class Responses.
#
# 2. Implement the `responses` Hash that we've been using in prior
#    exercises by making it a class variable called `@@responses`.
#
# 3. Implement the module Enumerable in the class Responses.
#
# 4. Create a new Responses instance and use your new .each method to
#    iterate over the possible responses and print them to the screen.
#
################################################################################
#
# Student's Solution:
#
################################################################################

class Responses
  include Enumerable

  @@responses = {
                :positive => [ "It is certain", "It is decidedly so",
                               "Without a doubt", "Yes - definitely",
                               "You may rely on it", "As I see it, yes",
                               "Most likely", "Outlook good", "Yes",
                               "Signs point to yes" ],
                :neutral  => [ "Reply hazy, try again", "Ask again later",
                               "Better not tell you now", "Cannot predict now",
                               "Concentrate and ask again" ],
                :negative => [ "Don't count on it", "My reply is no",
                               "My sources say no", "Outlook not so good",
                               "Very doubtful" ] }
  def initialize
  end

  def each
    for member in @@responses
      yield(member)
    end
  end
end

responses = Responses.new

responses.each do |response|
  puts response
end
