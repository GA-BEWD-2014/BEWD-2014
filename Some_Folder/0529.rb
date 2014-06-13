while true
	puts "Is steak your favorite food?"
	answer = gets.chomp.downcase
	if (answer == 'yes' || answer == 'no')
		break
	else
		puts "Please answer yes or no."
	end
end

puts "Thank you for the response!"

#FizzBuzz exercise

1.upto(100) do |num|

	if num%3 == 0 and num%5 != 0
		puts "fizz"

	elsif num%5 == 0 and num%3 != 0
		puts "buzz"
		
	elsif num%3 == 0 and num%5 == 0
		puts "FizzBuzz"

	else puts "#{num}"

	end
end

____________________

100.downto(10) do |num|

	if num%2 == 0 and num%5 != 0
		puts "Pretty"
	elsif num%5 == 0 and num%2 != 0
		puts "So pretty"
	elsif num%2 == 0 and num%5 == 0
		puts "So pretty pretty"
	else
		puts num
	end
end 

# 1.upto(100).each do |num|
# case 
# 	when num % 15 == 0 then puts "Fizzbuzz"
# 	when num % 3 == 0 then puts "Fizz"
# 	when num % 5 == 0 then puts "Buzz"
# 	else puts num
# 	end
# end
		
# 	end
# _____________

require 'pry'

name = "Rusty"
binding.pry # adding this line will not allow for changing of name to Wyatt
name = "Wyatt"
puts name
# type "exit" to exit pry

#programmableweb.com to see APIs

#JSON - how API's talk to each other

#http://www.reddit.com/.json - this is saying send us top 25 posts

#install Chrome extension adapter for json viewer

#no kimono - for scrapping, right click and go to inspect elements

#gem install rest-client
#require 'pry'
#require 'rest-client'
#require 'json'

response = RestClient.get("URL")
movies = JSON.load(response)
binding.pry
response

exit

Puts "enter a search term: "
input = chomp

movies["Search"].each do |film|
	puts film["Title"]
end


#require 'pry'
#require 'rest-client'
#require 'json'

puts "These are my top REDDIT posts!"
puts "Select an option to continue."

post = RestClient.get("http://reddit.com/.json")
clean_post = JSON.load(post)

clear_post ["data"]["children"].each do |post|
	puts post ["data"]["title"]
end


_____________


subred = RestClient.get("http://reddit.com/r/aww/.json")
sub_post = JSON.load(subred)

sub_post ["data"]["children"].each do |post|
	puts post ["data"]["title"]
end

________________
input = gets.chomp
subred = RestClient.get("http://reddit.com/r/#{input}/.json")
sub_post = JSON.load(subred)

sub_post ["data"]["children"].each do |post|
	puts post ["data"]["title"]
end



