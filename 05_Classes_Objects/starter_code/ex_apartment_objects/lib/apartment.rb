#Apartment class.
class Apartment
	attr_accessor :rent, :renter
	attr_reader :name, :sqft, :bedrooms, :bathrooms

	def initialize(name, sqft, bedrooms, bathrooms)
		@name = name
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
	end

	def to_s
		"Name: #{@name}\n Square Feet: #{@sqft}\tBedrooms: #{@bedrooms}\tBathrooms: #{@bathrooms}\n"
	end

end
