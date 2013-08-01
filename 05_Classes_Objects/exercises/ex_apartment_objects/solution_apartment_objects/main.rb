# => Apartment Objects Solution

require_relative 'lib/building'
require_relative 'lib/apartment'
require_relative 'lib/person'
 
  def create_apartment

    puts "-----------New Apartment-----------"
    puts "What is the apartment number / name?"
    name = gets.strip

    puts "How many square feet is apartment #{name}?"
    apt_sqft = gets.to_i
    
    puts "How many bedrooms does apartment #{name} have?"
    apt_bedrooms = gets.to_i

    puts "How many bathrooms does apartment #{name} have?"
    apt_bathrooms = gets.to_i

    Apartment.new(name, apt_sqft, apt_bedrooms, apt_bathrooms)
  end

  def create_renter

  puts "-----------New Renter-----------"
    puts "What is the renter's name?"
    name = gets.strip
    
    puts "What is the #{name}'s credit score?"
    c_score = gets.to_i
    
    puts "Is #{name} male of female?"
    gender = gets.strip
    
    Person.new(name, c_score, gender)
  end

  def create_building
    puts "-----------New Building-----------"
    puts "What is the building's name?"
    building_name = gets.strip

    puts "What is the building's address?"
    building_address = gets.strip

    Building.new(building_name, building_address)
  end

  puts "******************Welcome to Ruby Building Manager****************** \n \n \n"

  building = create_building

  puts "How many units are there?"
  apt_count = gets.to_i

   0.upto(apt_count - 1) { |unit|
    
    apartment = create_apartment
    building.apartments[unit] = apartment
    
    puts "Apartment added successfully \n #{apartment}"
    
    puts "Is unit #{apartment.name} rented? (y)es (n)o"
    unit_rented = gets.strip

    if unit_rented == "y"
      building.apartments[unit].renter = create_renter
      puts "Renter added successfully"

      puts "How much is this unit rented for?"
      rent = gets.to_i
      building.apartments[unit].rent = rent
    end
  }

  puts "What would you like to do next, (v)iew all apartments? (q)uit?"
  response = gets.strip

  if response == 'v'
    building.view_apartments
  else
    puts "Thanks for using Ruby Building Manager"
 end 
