class AreaMailer < ApplicationMailer

  def weekly(message, group_run_message, user, receiver)
    @runner = receiver
    @message = message
    @user = user
    @group_run_message = group_run_message

    #Changes email subject depending on the runner's status
    if @runner.status == "regular"
      mail(to: @runner.email, subject: "Here's what we've been up to this week")
    elsif @runner.status == "lapsed"
      mail(to: @runner.email, subject: "It's been a while")
    else
      mail(to: @runner.email, subject: "Make your first step into Goodgym")
    end
  end


end
