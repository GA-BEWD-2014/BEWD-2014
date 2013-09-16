class MessagesController < ApplicationController
  def create
    user = User.find params[:user_id]
    client = Twilio::REST::Client.new ENV['TW_SID'],
                                      ENV['TW_TOKEN']

    client.account.sms.messages.create from: ENV['TW_SOURCE_NUMBER'],
                                       to: user.phone,
                                       body: params[:body]
    redirect_to root_path
  end
end
