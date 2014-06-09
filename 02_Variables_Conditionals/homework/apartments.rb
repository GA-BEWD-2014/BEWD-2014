class Apartment

	attr_accessor :name, :rent, :square_footage, :number_bedrooms, :renters 

	def initialize(name, rent, square_footage, number_bedrooms, renters)
		@name = name
		@rent = rent
		@square_footage = square_footage
		@number_bedrooms = number_bedrooms
		@renters = []
	#	@is_occupied = false
	end	

	def is_occupied?
		#@renters.any?	
		if @rent.to_i > 0
			false
		else
			true
		end		
	end	

	def add_renters(renters_name)
		@renters << renters_name
	end	

	def delete_renters(renters_name)
		@renters.delete(renters_name)
	end	

	# def get_taxes
		# @taxes
	# end	


	def to_s
		"Location: #{@name} Rent: #{@rent}"
	end	

end	

#my_apartment = Apartment.new("SF Soma", 2000, 500, 2)
#my_apartment = Apartment.new("Pac Heights", 1000, 100, 4)
my_apartment = Apartment.new("Marina", 1500, 500, 3, "chjv")

my_apartment.renters = ["zxcxz"]
#my_apartment.renters["sfds", "zcxvxc"]

my_apartment.add_renters["xxxx"]
puts my_apartment.renters


if my_apartment.is_occupied?
	puts "Not for rent"
else
	puts my_apartment
	puts "For rent"
end		


puts my_apartment.name