class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end

  def set_session
    session[:name] = params[:name]
  end

  def require_login
    if !current_user
      redirect_to '/login'
    end
  end

end
