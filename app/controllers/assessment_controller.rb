class AssessmentController < ApplicationController
  def new
    @email = params[:session][:email]
    @user = User.find_by(email: @email)
    if @user
      @assessment = Assessment.new(user_id: @user.id)
      if @assessment.save
        flash.now[:success] = 'Assessment assigned sucefully!'
        render 'admin/menu'
      end
    else
      flash.now[:danger] = 'Invalid email. Try again!'
      @users = User.admin(false)
      render 'admin/assessments'
    end
  end

  def edit
  end

  def do
  end

  def save
  end

  def list
    redirect_to
  end

  def menu

  end
end
