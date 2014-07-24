class SchedulesController < ApplicationController
  before_action :signed_in_user

  def create
    @schedule = current_user.schedules.build(schedule_params)
    if @schedule.save
      flash[:success] = "Schedule created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy

  end

  private

    def schedule_params
      params.require(:schedule).permit(:class_date, :class_time, :class_duration, :student, :class_type)
    end
end