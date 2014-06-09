class AccessYelp

	
	attr_accessor :consumer_key, :onsumer_secret, :token, :token_secret, :api_host, :consumer, :access_token

	def initialize
	# authentication tokens
		@consumer_key = 'emYovFd_Hou1UJ4nO3G3vA'
		@consumer_secret = 'h4ujPpXVPik1UrWWQjXQk6g98Uo'
		@token = 'MRmagzDnnL_Uk4PWhEmD85JJl5UVOIl1'
		@token_secret = 'Na7atKGOzUZdS2d1OcApZciat64'
	
		# this is a variable that holds the api url
		@api_host = 'api.yelp.com'

		# consumer holds the value of the Module "Oauth" and we are creating a new instance of a Consumer
		# passing in three arguments
		@consumer = OAuth::Consumer.new(@consumer_key, @consumer_secret, {:site => "http://#{api_host}"})

		# access_token shares a similar step to creating a new instance of a Consumer.
		@access_token = OAuth::AccessToken.new(@consumer, @token, @token_secret)
	end
end