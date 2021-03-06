module SessionHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def login?
    !!current_user
  end

  def require_login
    redirect_to root_url unless current_user
  end

  def authorized?(id)
    current_user.id == id
  end

  def add_session(id)
    session[:user_id] = id
  end

  def remove_session
    session.clear
  end
end
