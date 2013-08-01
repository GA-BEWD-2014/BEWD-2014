require 'lib/animal_solution'

class Tiger < Animal
 attr_accessor :food_type
 
  def initialize(pet_name, zoo_keeper)
    @food_type = 'Lots of MEAT'
    super(pet_name, zoo_keeper)
  end

  def get_diet
    return "The tiger's diet is #{food_type}"
  end
end