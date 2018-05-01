class AreasController < ApplicationController
  before_action :set_area, only: [:show]

  def index
    @areas = Area.all
  end

  def new
    @area = Area.new
  end

  def weekly_email
    @message = params["message"]

    current_user.area.runners.each do |runner|
      AreaMailer.weekly(@message, current_user, runner).deliver_now
    end

    redirect_to area_path(current_user.area)

  end

  def create
    @area = Area.new(area_params)
    if @area.save
      redirect_to area_path(@area)
    else
      render :new
    end
  end

  def

  def show

  end

  private

  def set_area
    @area = Area.find(params[:id])
  end

  def area_params
    params.require(:area).permit(:name)
  end
end
