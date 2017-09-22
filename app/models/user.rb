require 'json'
require 'net/http'
require 'twilio-ruby'


class User < ApplicationRecord
  include URI
  include JSON
  devise :database_authenticatable, :registerable
         #:recoverable, :rememberable, :trackable, :validatable
  has_many :subscriptions
  has_many :projects
  has_many :updates, { through: :projects }
  #+15416047255

def text_user
  begin
    @client = Twilio::REST::Client.new ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"]
    message = @client.messages.create(
      body: "Hello User!",
      to: "+15416477999",
      from: "+15416047255"
      )
  rescue Twilio::REST::TwilioError => e
      puts e.message
    end
  end
end
