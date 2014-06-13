require 'rest-client'
require 'pry'
require 'json'

puts "How would you like to search?"

puts "1: Title"
puts "2: Content Type"

choice = gets.chomp.to_i

if choice == 1
  puts "what is the title?"
  title = gets.chomp.gsub(" ", "-")
  response = RestClient.get("https://www.healthcare.gov/#{title}.json")
  parsed = JSON.load(response)
  # binding.pry
  puts parsed

elsif choice == 2

  puts "Select a content_type"
  content_type = gets.chomp
  response = RestClient.get("https://www.healthcare.gov/api/#{content_type}.json")
  parsed = JSON.load(response)
  # binding.pry
  puts parsed

else
  puts "error!"
end


# response = RestClient.get("https://www.healthcare.gov/#{title}.json")

# parsed = JSON.load(response)

# binding.pry