class Person
# this class will likely be simple, and just remember its name
	attr_accessor :player_name

	def initialize(player_name)
		@player_name = player_name	
	end	

	def show_name
		"#{player_name}"	
	end	

end
