class NursesController < ApplicationController
  before_action :logged_in_nurse, only: [:assessment, :menu, :assessments]

  def logged_in_nurse
    unless logged_in?
      redirect_to login_url
    end
  end

  def assessment
  end

  def menu

  end

  def assessments

  end
end
