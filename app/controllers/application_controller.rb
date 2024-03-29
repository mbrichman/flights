class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?
  helper_method :current_user

  def signed_in?
    return session[:user_id].present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end
end
