class TextController < ApplicationController
	

  def create
  	@party = Party.find(params[:party_id])
  	number = @party.phone

  	# put your own credentials here
		account_sid = 'AC2d0a8231d2e09ea77a245fe1fb1bedaa'
		auth_token = 'e099ec6211a8d5eb26e54750d26fefa1'
		twilio_phone_number = '8603318643'

		# set up a client to talk to the Twilio REST API
		@client = Twilio::REST::Client.new account_sid, auth_token
  	
  	respond_to do |format|
	  	if @client.account.sms.messages.create(
			  :from => "+1#{twilio_phone_number}",
			  :to => "+1#{number}",
			  :body => 'Hey there! Your table is ready.'
			)
	  		format.js
	  	end
	  end
  end
end
