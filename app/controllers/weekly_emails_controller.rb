class WeeklyEmailsController < ApplicationController

  def new

  end

  def create
    @message = params["message"]
    @group_run_message = params["group_run_message"]

    if (params["message"].present? && params["group_run_message"].present?)

      current_user.area.runners.each do |runner|
        AreaMailer.weekly(@message, @group_run_message, current_user, runner).deliver_now
      end
      flash[:notice] = "Emails successfully sent"
      redirect_to area_path(current_user.area)
    end
    # redirect_to(area_path(current_user.area), notice:"Your emails have been sent")
  end

end
