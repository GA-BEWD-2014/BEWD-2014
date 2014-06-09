class Building

	attr_accessor :building_name, :building_address, :apartments, :renters

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
	# 	hash
	#	@apartments = {}
	# 	array
		@apartments = []
		@renters = []
	end	


	def view_apartments
			@apartments.each do |x|
			 	#puts x
			 	puts x.name
			 	puts x.apt_sqft
			 	puts x.apt_bedrooms
			 	puts x.apt_bathroomsRelease 

			end	
			#puts @apartments
			#@apartments.inspect
	end


	def view_renters
		puts "#{@name} Renters List"
			@apartments.each do |apartment|
				if apartment.is_occupied?
					puts Name: "#{apartment.renter} \t Unit: #{apartment.name}"
				else
					puts "Unit: #{apartment.name} is empty!"
				end	
			end	
	end	
end
