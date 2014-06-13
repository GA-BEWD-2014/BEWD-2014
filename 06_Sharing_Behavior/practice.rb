class House

	attr_accessor :bedrooms, :bathrooms, :residents

	def initialize (bedrooms, bathrooms, residents)
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@residents = residents
	end

	def rooms_total
		puts "This house has #{bedrooms} bedrooms and #{bathrooms} bathrooms."
	end

	def family
		puts "This house also has #{residents} family members inside!"
	end

end

H1 = House.new(4, 2, 5)
puts H1.rooms_total
puts H1.family

# ________________________
# require 'pry'
# require "json"
# require 'rest-client'

# input = gets.chomp
# subred = RestClient.get("http://reddit.com/r/#{input}/.json")
# sub_post = JSON.load(subred)

# sub_post["data"]["children"].each do |post|
# 	puts post ["data"]["title"]
# end


