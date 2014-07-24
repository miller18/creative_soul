class StaticPagesController < ApplicationController
  def home
    @schedule = current_user.schedules.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact

  end
end
