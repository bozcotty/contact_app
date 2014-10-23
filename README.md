# A simple contact app featuring background jobs with Resque in Rails 4.2

Open up contact_app on your local server and you're given a simple 'Contact Us' page. It simply asks for a name, email address and a message from the user, and sends your message to the site owner.

It uses a message mailer and sends the message in a background job with Resque. I added the simple_form gem for creating the contact us form.

## Key Components to Wire this Up

- Create a new Rails 4.2 app:
```
$ rails new contact_app
```

- Add these gems to Gemfile:
```
gem 'resque'
gem 'resque-scheduler'
gem 'simple_form'
```

```
$ bundle
```

- Install Redis:
```
$ brew install redis
```

-Configure development.rb under config/environments. Add the following lines at the end of the file (I used environment variables, and installed figaro gem to create a application.yml file and add that file to git ignore):
```
config.active_job.queue_adapter = :resque
config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'google.com',
  user_name:            ENV['GMAIL_USERNAME'],
  password:             ENV['GMAIL_PASSWORD'],
  authentication:       'plain',
  enable_starttls_auto: true }
```

- Creation of a message mailer:
```
$ rails generate mailer MessageMailer
```

- Build a new_message mailer view in generated file: app/views/message_mailer

- Build scaffolding for the message model:
```
$ rails generate scaffold Message name email message:text
$ rake db:migrate
```

- Create a background Job for sending the contact us message:
```
$ rails generate job SendEmail
```
This generates a send_email_job.rb file in a new folder called jobs, in the app folder. Open that file and modify it to look like this:
```
class SendEmailJob < ActiveJob::Base
  queue_as :default

  def perform(message)
    MessageMailer.new_message(message).deliver
  end
end
```

- Finally - lets queue this as a background job. Go to the messages controller and modify the create method to look like so:
```
def create
    @message = Message.new(message_params)

    if @message.save
      SendEmailJob.new.perform(@message)
      redirect_to root_url, notice: 'We have received your message and will respond shortly!'
    else
      render :new, notice: "There was a problem.Please try re-sending your message."
    end
  end
  ```
  Also note that only the new and create actions are needed in this controller for our purposes. All of the others generated automatically have been deleted, as well as the 'before' action and associated private method.

  That's it! Let me know if I'm missing something instruction-wise if you try this out and have any trouble.





