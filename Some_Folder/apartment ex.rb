class Apartment
	#name, rent, square_footage, number_bedrooms
	attr_accessor :name, :rent, :square_footage, :number_bedrooms, :renters # variables that have meaning in this class

	def initialize(name, rent, square_footage, number_bedrooms) 
		@name = name
		@rent = rent
		@square_footage = square_footage
		@number_bedrooms = number_bedrooms
		@renters = []
	end

	def is_occupied?
		@renters.any?
	end

	def add_renters(renter)
		@renters << renters_name
	end

	def delete_renters(renter_name)
		@renters.delete (renters_name)
	end
end

my_apartment = Apartment.new("SF SOMA", 2000, 800, 1)


if my_apartment.is_occupied?
	puts "This apartment is not for rent"
else
	puts my_apartment
	puts "This apartment is for rent"
end

my_apartment.renters = ["Mari", "Sally"]
puts my_apartment.renters
my_apartment.add_renters("Greg")
puts my_apartment.renters
my_apartment.delete_renters("Mari")
puts my_apartment.renters


# def to_s
# 	puts my_apartment
# end
# ___________