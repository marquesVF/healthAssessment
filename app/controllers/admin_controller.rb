class AdminController < ApplicationController
  before_action :logged_as_admin, only: [ :menu, :assessments]

  def logged_as_admin
    unless logged_in?
      redirect_to login_url
    end
  end

  def menu
    title(@current_user.name)
    page("admin_menu")
  end

  def assessments
    title(@current_user.name)
    page("admin_menu")
  end
end
