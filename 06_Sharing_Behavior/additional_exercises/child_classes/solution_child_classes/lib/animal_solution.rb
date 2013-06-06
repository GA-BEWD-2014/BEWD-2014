class Animal
  attr_accessor :pet_name, :zoo_keeper

  def initialize(pet_name, zoo_keeper)
    @pet_name = pet_name
    @zoo_keeper = zoo_keeper
  end

  def get_info
    return "Pet Name is #{@pet_name} and the Zookeeper is #{@zoo_keeper}"
  end
end

