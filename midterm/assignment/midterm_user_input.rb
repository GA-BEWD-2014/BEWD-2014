class UserInput
	
	attr_accessor :search_term, :city, :limit_response, :path

	# initialize
	def initialize
		@search_term = search_term
		@city = city
		@limit_response = limit_response
		@path = path
	end	

	# ask users to specify search term
	def search_method
		puts "What are you looking for?"
		@search_term = gets.chomp.to_s
		@search_term.gsub!(" ", "%20")
		#puts @search_term
	end	

	# ask users to specify city
	def city_method	
		puts "In what city? Leave empty if you live in SF"
		@city = gets.chomp.to_s
		@city.gsub!(" ", "%20")
			if @city == "" 
				@city = "San%20Francisco"
			end
		#puts @city	
	end		

	# ask users for number of responses
	def limit_response_method
		puts "How many responses do you like? Max 20"
		@limit_response = gets.chomp.to_i
		#puts @limit_response	
			if @limit_response > 20
				@limit_response = 20
			elsif @limit_response < 1
				@limit_response = 10
			end		
	end	
	
	# generate path based on user input	
	def path_method	
		@path = "/v2/search?term=#{@search_term}&location=#{@city}&limit=#{@limit_response}"
		#puts "path: #{@path}"
	end	
end	