class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_current_user, :log

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def log
    logger.debug("[debug]")
  end

end
