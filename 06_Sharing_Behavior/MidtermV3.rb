# Midterm

require 'rest-client'
require 'pry'
require 'json'

class Person

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

def age_check (age)
  return "That is very old!" if age.to_i >= 30
  return "That is very young!" if age.to_i <=20
  return "Cool."
end

def check_name (name)
  return "Hello, #{name}! That's a very long name!" if name.length >= 10
  return "Hello, #{name}!"
end

puts "What is your name?"
name = gets.chomp

puts check_name(name) 
puts

puts "What is your age?"
age = gets.chomp

puts age_check(age.to_i)
puts

puts "Let us get started! I want to test your reading abilities."
puts "What is the title of the article? "

title = gets.chomp.gsub(" ", "-")
response = RestClient.get("https://www.healthcare.gov/#{title}.json")
parsed = JSON.load(response)
puts parsed

# I would like to get the code below to work also but I have not been successful.

# puts "Alright, let us begin! Enter a key word in the title of the article please!"
# input = gets.chomp
# response = RestClient.get("http://healthcare.gov/#{input}/.json")
# parsed = JSON.load(response)

# parsed["title"].each do |post|
#   puts post ["title"]
# end


