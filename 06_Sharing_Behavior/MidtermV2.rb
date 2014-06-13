require 'rest-client'
require 'pry'
require 'json'

class MyArticle

  attr_accessor :title, :published, :bite

  def initialize (title, published, bite)
    @title = title
    @published = published
    @bite = bite
  end

  def my_article
    puts "The article entitled #{title} was published as #{published} with the following destription: "
    puts "#{bite}"
  end

end

puts "How would you like to search? You may search by the options below:"

puts "1: Title"
puts "2: Content Type"
puts "please enter a numerical value for your choice."

choice = gets.chomp.to_i

while true 
  if choice == 1
    puts "What is the title name?"
    title = gets.chomp.gsub(" ", "-")
    response = RestClient.get("https://www.healthcare.gov/#{title}.json")
    parsed = JSON.load(response)
    # binding.pry
    puts parsed

  elsif choice == 2
    puts "What is the content type?"
    content_type = gets.chomp
    response = RestClient.get("https://www.healthcare.gov/api/#{content_type}.json")
    parsed = JSON.load(response)
    # binding.pry
    puts parsed
    break
  else
  puts "error! Please enter a valid number."  
  end
end


# response = RestClient.get("https://www.healthcare.gov/#{title}.json")

# parsed = JSON.load(response)

# binding.pry