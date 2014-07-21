#This is the apartment code for lab exercise on 06022014

def create_apartment
  puts "This is a new apartment."
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

