module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def logged_admin?
    current_user.admin
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def page(page)
    @page = page
  end

  def title(title)
    @title = title
  end
end
