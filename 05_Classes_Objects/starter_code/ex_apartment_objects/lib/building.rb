#Building Class
class Building

	attr_accessor :apartments, :num_units
	attr_reader :address, :name

	def initialize(name, address)
		@name = name
		@address = address
		@apartments = []
	end

	def view_apartments
		puts "-----------#{@name}-----------"
		apartments.each do |unit|
			puts unit
			if unit.renter
				puts "This apartment is rented"
			else
				puts "This apartment is vacant"
			end
			puts "*" * 50

		end
	end

	def view_renters
		puts "-----------#{@name} Renters List-----------"
		apartments.each do |unit|
			if unit.renter
				puts "Name: #{unit.renter}\tApartment: #{unit.name}"
			end
		end
	end


end
