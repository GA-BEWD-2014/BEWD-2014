class Apartment

	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter, :rent

	def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
		@renter = nil
		@rent = nil
	end

def is_rented?
	@renter !=nil
end


	def to_s
		"Apartment: #{name}
Sqft: #{apt_sqft}	Bedrooms: #{apt_bedrooms}	Bathrooms: #{apt_bathrooms}
"
	end

end
