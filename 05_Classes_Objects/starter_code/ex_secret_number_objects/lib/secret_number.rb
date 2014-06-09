class SecretNumber
# this class will generate our secret number for us
	attr_accessor :sec_num

	def initialize
		@sec_num = rand(1..10)

		#display sec_num for testing purpose 
		puts "Your Secret number is: #{sec_num}"
	end	

end


