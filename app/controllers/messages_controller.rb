class MessagesController < ApplicationController
  def index
		@messages =	Message.all
  end

	def create
		puts params
    @message = Message.new(params.permit(:mailer, :body))
    if @message.save
      redirect_to @message
    end
  end
	
	private
    def message_params
      params.require(:message).permit(:mailer, :body)
    end
	
end
