class Comment < ActiveRecord::Base

  belongs_to :post

#   before_create :send_message
#
#
# private
#   def send_message
#
#   account_sid = 'ACc6964c8a4a3db68d96c62200ef279648'
#   auth_token = '{{ auth_token }}'
#   @client = Twilio::REST::Client.new account_sid, auth_token
#
#   message = @client.account.messages.create(:body => "You have a comment!",
#   :To => "9183132501",
#   :From => "9188217006")
#   puts message.to
# end

  # def send_message
  #   begin
  #     response = RestClient::Request.new(
  #     :method => :post,
  #     :url => "https://api.twilio.com/2010-04-01/Accounts/#{ENV['TWILIO_ACCOUNT_SID']}/Messages.json",
  #     :user => ENV['TWILIO_ACCOUNT_SID'],
  #     :password => ENV['TWILIO_AUTH_TOKEN'],
  #     :payload => { :Body => "You have a comment!",
  #     :To => "9183132501",
  #     :From => "9188217006"}
  #       ).execute
  #     rescue RestClient::BadRequest => error
  #       message = JSON.parse(error.response)['message']
  #       errors.add(:base, message)
  #       false
  #     end
  #   end
end
