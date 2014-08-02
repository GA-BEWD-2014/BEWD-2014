require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
require 'json'

class Player
	attr_accessor :name, :phone_number, :assigned_charade

	def initialize(name, phone_number, assigned_charade)
		@name = name
		@phone_number = phone_number
		@assigned_charade = assigned_charade
	end

	def send_Twilio_SMS
	# Paul's Twilio API credentials
		account_sid = 'AC277cf35a20573e1d13f3c50f45b92612' 
		auth_token = '0379092183f9ef2732e7a08f82bb50fe' 

	# set up a client to talk to the Twilio REST API 
		@client = Twilio::REST::Client.new account_sid, auth_token 

		@client.account.messages.create({
			#FROM is from Paul's Twilio Phone number
			:from => '+13129975477',    
			:to => "+1#{@phone_number}",
			:body => "Your charade assignment is #{assigned_charade}",
		})
	end

end
