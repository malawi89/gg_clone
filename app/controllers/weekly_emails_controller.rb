class WeeklyEmailsController < ApplicationController

  def new

  end

  def create
    if SendWeeklyEmail.new(current_user, params).call

      flash[:notice] = "Emails successfully sent"
      redirect_to area_path(current_user.area)
    else
      render :new
    end
    # redirect_to(area_path(current_user.area), notice:"Your emails have been sent")
  end

end
