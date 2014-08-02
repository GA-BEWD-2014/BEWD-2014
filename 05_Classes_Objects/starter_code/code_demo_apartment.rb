#Explaining classes, objects, attr_accessor & load paths. 
#TIME: 30 min


class Apartment
	attr_accessor :name, :rent, :sq_footage, :num_b, :renters

	def initialize(name, rent, sq_footage,num_b)
		@name = name
		@rent = rent
		@sq_footage = sq_footage
		@num_b = num_b
		@renters = []
	end

	def is_occupied?
		@renters.any?
	end

	def to_s
		puts "#{@name} has #{@sq_footage} square feet, #{@num_b} bedrooms and costs $#{@rent} per month"
	end

	#this might be wrong!
	def add_renters(renters_name)
		@renters << renters_name
	end

	def delete_renters(renters_name)
		@renters.delete(renters_name) 
end

my_apartment = Apartment.new("SF SOMA", 2000, 800, 1)
kirstens_apartment = Apartment.new("Burlingame Studio", 1500, 450, 0)
pauls_apartment = Apartment.new("Millbrae 2 BR", 1800, 800, 2)

if my_apartment.is_occupied?
	puts "This apartment is not for rent"
else
	puts my_apartment
	puts "This apartment is for rent"
end

my_apartment.renters = ["Paul","Greg"]
puts my_apartment.renters
my_apartment.delete_renters("Paul")
puts my_apartment.renters
end