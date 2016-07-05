class ConversationController < ApplicationController
  before_action :authenticate_user!

  def create
    @conversation = Conversation.new(conversation_params)
    boot_twilio
    twilio_number = "2134938610"
    @twilio_client.account.sms.messages.create(
      :from => twilio_number
      :to => "#{@conversation.phone_number}"
      :body => "#{@conversation.animal.script}"
    )
  end

  def new
    @conversation = Conversation.new
  end

  private

  def boot_twilio
    twilio_sid = ""
    twilio_token = ""

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
  end

  def conversation_params
    params.require(:conversation).permit(:name, :phone_number, :animal_script)
  end
end
