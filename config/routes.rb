SmsApp::Application.routes.draw do
  
  root :to => 'twilio#index'
  post '/send_sms' => 'twilio#send_sms'
  
end
