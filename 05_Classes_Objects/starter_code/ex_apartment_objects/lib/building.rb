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
      if apartment.is_occupied?
        puts "#{apartment.renter}"
      else
        puts "This apartment is vacant"
      end
        puts "----------------------------------------------"
    end
  end
 
  def to_s
    "Building #{name} at #{address} has #{@apartments.count} apartments."
  end
end