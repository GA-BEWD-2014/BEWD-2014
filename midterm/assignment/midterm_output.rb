class UserOutput

	attr_accessor :response, :parsed

	# initialize
	def initialize(response)
		#@response = response
		@parsed = JSON.load(response) 
	end	

	# binding.pry

	# look though output and display name and ratings
	def process_output
	counter = 1
		@parsed["businesses"].each do |x|
			puts "#{counter} Name: " + x["name"] +  " Rating:" + x["rating"].to_s
			counter +=1 
		end
	end	

end	