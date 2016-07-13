class WelcomeController < ApplicationController
  def home

  end

  def search
    @assessments = Assessment.all
    render :search
  end

  def login
    flash[:info] = 'Insert your email and password'
  end

  def about

  end
end
