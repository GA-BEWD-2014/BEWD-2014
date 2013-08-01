class PersonSolution 
	attr_accessor :first_name
	attr_accessor :last_name
	def initialize(first, last)
		@first_name = first
		@last_name = last
	end
	def get_full_name
		return "#{first_name} #{last_name}"
	end
end