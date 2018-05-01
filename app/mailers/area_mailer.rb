class AreaMailer < ApplicationMailer

  def weekly(message, user, receiver)
    @runner = receiver
    @message = message
    @user = user

    if @runner.status == "regular"
      mail(to: @runner.email, subject: "Here's what we've been up to this week")
    elsif @runner.status == "lapsed"
      mail(to: @runner.email, subject: "It's been a while")
    else
      mail(to: @runner.email, subject: "Make your first step into Goodgym")
    end
  end





  def lapsed
    @runners = current_user.area.runners.where(status: "lapsed")
    @runners.each do |runner|
      mail(to: runner.email, subject: "Testing")
    end
  end

  def regular
    @runners = current_user.area.runners.where(status: "regular")
    @runners.each do |runner|
      mail(to: runner.email, subject: "Testing")
    end
  end

  def never_run
    @runners = current_user.area.runners.where(status: "never_run")
    @runners.each do |runner|
      mail(to: runner.email, subject: "Testing")
    end
  end

end
