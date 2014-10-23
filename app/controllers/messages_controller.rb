class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      SendEmailJob.new.perform(@message)
      redirect_to root_url, notice: 'We have received your message and will respond shortly!'
    else
      render :new, notice: "There was a problem.Please try re-sending your message."
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
