require 'lib/animal_solution'

class Cat < Animal
  attr_accessor :food_type

  def initialize(pet_name, zoo_keeper)
    @food_type = 'Whiskas'
    super(pet_name, zoo_keeper)
  end

  def get_diet
    return "The Cat's diet is #{food_type}"
  end
end