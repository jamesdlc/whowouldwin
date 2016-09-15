class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def not_found
    render :file => "public/404"
  end
  helper_method :current_user

end
