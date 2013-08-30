#Explaining classes, objects, attr_accessor & load paths.
#TIME: 30 min
#INSTRUCTIONAL DESIGN NOTES:
# => This example is to further highlight objects and classes and the need for attr_acessor (note build getters and setters first).
# => Start with a blank document and build.
# => Give students time to create other instances of apartment, have them experiment with adding/removing renters.
#=> Students will see the Apartment example again, during lab time, students will build a "person" and "building" class based on
# code seen in the main.rb file.

class Apartment
  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

  def initialize(name, sqft, num_bedrooms, num_bathrooms)
    @name = name
    @rent = 0
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = []
  end

  def is_occupied?
    @renters.any?
  end

  def to_s
    "#{@name} has #{@sqft} sqft and #{@renters.count} renters."
  end
end

my_apartment = Apartment.new("Viaud Brooklyn Residential", 800, 1, 1)
#Ask students how they would add renters to my_apartment.
#my_apartment.renters = ['Peter', 'Andre']
#OR: my_apartment.renters << 'Gracie'

if my_apartment.is_occupied?
  puts "This apartment is not for rent"
else
  puts my_apartment
  puts "This apartment is for rent, ask your broker for more details"
end
