class NursesController < ApplicationController
  before_action :logged_in_nurse, only: [:assessment, :menu, :assessments]

  def logged_in_nurse
    unless logged_in?
      redirect_to login_url
    end
  end

  def menu
    title(@current_user.name)
    page("nurse_menu")
  end

  def assessments
    title(@current_user.name)
    page("nurse_menu")
  end
end
