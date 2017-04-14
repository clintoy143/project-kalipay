class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= Admin.find(session[:user_id]) if session[:user_id]
  end
  
  helper_method :current_user

  def authorize
    redirect_to project_kalipay_admin_auth_path unless current_user
  end

end
