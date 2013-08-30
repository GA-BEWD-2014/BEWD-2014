#Apartment class.
class Apartment
  attr_accessor :name, :sqft, :num_bedrooms, :num_bathrooms, :renter, :rent

  def initialize(name, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renter = nil
    @rent = nil
  end

  def is_occupied?
    @renter != nil
  end

  def to_s
    "Apartment: #{@name} \n sqft: #{@sqft} \t Bedrooms: #{@num_bedrooms} \t Bathrooms: #{@num_bathrooms}"
  end
end
