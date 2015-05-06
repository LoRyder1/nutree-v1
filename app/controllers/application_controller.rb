class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  helper_method :current_user, :logged_in?

  protect_from_forgery with: :exception

  def current_user
  	
  end

  def logged_in?
  	
  end
end
