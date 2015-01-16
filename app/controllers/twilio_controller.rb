class TwilioController < ApplicationController
  
  def send_sms
    message = params[:message]
    number = params[:number]
    account_sid = 'ACb0813df3dae1b238c518a7f8e14ea578'
    auth_token = '72bfe6d425c2e9df333ccb9ac05232e0'
    
    @client = Twilio::REST::Client.new account_sid, auth_token
    
    @message = @client.account.messages.create({:to => "+"+"#{number}",
                                  :from => "+4915735982049",
                                  :body => "#{message}"})
    redirect_to '/'
  end
  
end
