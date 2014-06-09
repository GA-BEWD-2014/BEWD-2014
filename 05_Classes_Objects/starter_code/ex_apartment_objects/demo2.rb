class Employee
	attr_accessor :first_name, :last_name

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		"#{first_name} #{last_name}"
	end

end	

andreas = Employee.new("Andreas", "Ernst")
puts andreas.full_name


class Manager < Employee
	attr_accessor :email, :title

	def initialize(first_name, last_name, email, title)
		# @first_name = first_name
		# @last_name = last_name
		
		super(first_name, last_name)
		@email = email
		@title = title
		
	end


	def full_name 
		"#{@first_name} #{@last_name} #{@title}"
	end	

	def contact
		"#{@email}"
	end	
end	

class Marketer < Employee
	attr_accessor :twitter_name

	def initialize(first_name, last_name, twitter_name)
		@first_name = first_name
		@last_name = last_name
		@twitter_name = twitter_name
	end
end	


ted = Marketer.new("Ted", "T", "adsg")
puts ted.first_name


jane = Manager.new("Jane", "Doe", "ahcdsa@gmail.com", "Director")
puts jane.full_name


# fred = Employee.new("dsas", "zzf", "sfs@sfsf.com", "sdfsdfs")
# puts fred.full_name