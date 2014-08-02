class Game

	attr_accessor :participant_count, :players

	def initialize(participant_count)
		@participant_count = participant_count
		@players = []
	end

	def start_playing
		@players.each do |player|
		puts "Sending #{player.name} an SMS with their assigned role at #{player.phone_number}."
		player.send_Twilio_SMS
		end

	end

end
