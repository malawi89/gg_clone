class SendWeeklyEmail

  def initialize(current_user, params)
    @user = current_user
    @message = params["message"]
    @group_run_message = params["group_run_message"]
  end


  def call
      @user.area.runners.each do |runner|
        AreaMailer.weekly(@message, @group_run_message, @user, runner).deliver_now
      end
  end
end
