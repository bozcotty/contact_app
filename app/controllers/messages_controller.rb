class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      MessageMailer.new_message(@message).deliver
      redirect_to root_url, notice: 'Message was successfully sent.'
    else
      render :new, notice: "There was a problem.Please try sending your message again."
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
