#Building Class
class Building
  attr_accessor :name, :address, :apartments

  def initialize(name, address)
    @address = address
    @name = name
    @apartments = []
  end

  def view_apartments
    puts "------------#{@name} Apartment List--------------"
    @apartments.each do |apartment|
      puts apartment
      puts (apartment.is_occupied? ? apartment.renter : "This apartment is vacant")
    end
  end

  def to_s
    "Building #{name} at #{address} has #{@apartments.count} apartments."
  end
end
