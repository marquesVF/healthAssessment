class WelcomeController < ApplicationController
  def home

  end

  def search
    render :search
  end

  def login
    flash[:info] = 'Insert your email and password'
  end

  def about

  end
end
