#This is the building code for lab exercise on 06022014

def create_building
  puts "This is a new building."
  puts "What is the building's name?"
  building_name = gets.strip

  puts "What is the building's address?"
  building_address = gets.strip

  Building.new(building_name, building_address)
end
