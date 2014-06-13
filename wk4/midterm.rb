


# The API Part! - Twilio SMS send

require 'rubygems' # not necessary with ruby 1.9 but included for completeness 
require 'twilio-ruby' 
require 'json'
require 'pry'
 
# put your own credentials here 
account_sid = 'AC277cf35a20573e1d13f3c50f45b92612' 
auth_token = '0379092183f9ef2732e7a08f82bb50fe' 
 
# set up a client to talk to the Twilio REST API 
@client = Twilio::REST::Client.new account_sid, auth_token 
 
@client.account.messages.create({
	:from => '+13129975477',    
	:to => '+19083471778',
	:body => 'Assigned role: Johnny Walker',
})