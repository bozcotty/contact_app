class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(message)
    MessageMailer.new_message(message).deliver
  end
end
