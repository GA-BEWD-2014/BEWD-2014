class Building

	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		puts "-----------Full Apartments List-----------"
		@apartments.each do |apartment|
			puts apartment
			apartments.to_s
		end
	end

	def view_renters
		puts "------------HighRise Luxury Renters List--------------"
		@apartments.each do |apartment|
			if apartment.is_rented?
				puts "Name: #{apartment.renter} \t Unit: #{apartment.name}"
			else
				puts "Unit #{apartment.name} is empty"

			end
		end
	end

end