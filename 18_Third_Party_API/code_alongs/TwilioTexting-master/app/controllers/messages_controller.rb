class MessagesController < ApplicationController
  def create
    user = User.find params[:user_id]
    body = params[:body]
    client = Twilio::REST::Client.new ENV['TWILIO_SID'], 
                                      ENV['TWILIO_TOKEN']

    client.account.sms.messages.create from: "+#{ENV['SOURCE_PHONE_NUMBER']}", 
                                       to: user.phone, 
                                       body: body
    redirect_to root_path
  end
end
