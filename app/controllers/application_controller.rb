class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_current_user, :log

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def log
    # 実際に動かす時にはinfoログでOK
    logger.debug("[debug]")
  end

  def forbid_login_user
    if @current_user
        flash[:notice] = "すでにログインしています"
        redirect_to("/")
    end
  end

  def forbid_logout_user
    if not @current_user
        flash[:notice] = "新規登録、またはログインが必要です"
        redirect_to("/users/new")
    end
  end


end
