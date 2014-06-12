#require lib/organizer?

class Game

	attr_accessor :participant_count, :chosen_topic, :players

	def initialize(participant_count, chosen_topic, players)
		@participant_count = participant_count
		@chosen_topic = chosen_topic
		@players = []
	end

#Experimental method 2
def start_playing
	@players.each do |player|
		puts player.name
		puts player.phone_number
		player.send_Twilio_SMS
	end

end


#This method works
# def start_playing
# 	puts "Your chosen topic is #{@chosen_topic}"
# 	puts "There are #{@participant_count} players in this game"
# 	puts"Now I would send an SMSS"
# end


end
