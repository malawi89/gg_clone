class RunnersController < ApplicationController
  before_action :set_runner, only: [:show]

  def index
    @runners = Runner.all
  end

  def show

  end

  def new
    @runner = Runner.new
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save
      redirect_to area_runner_path(@runner)
    else
      render :new
    end
  end

  private

  def set_runner
    @runner = Runner.find[params[:id]]
  end

  def runner_params
    params.require(:runner).permit(:first_name, :last_name, :status, :coach_run, :group_run, :mission, :email)
  end
end
