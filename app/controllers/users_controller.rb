class UsersController < ApplicationController
before_action :forbid_login_user, {only: [:new, :login_form]}

  #ユーザー登録ページの表示
  def new

  end

  #ユーザーの登録
  def create
    @user = User.new(
      email: params[:email],
      password: params[:password]
    )
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録ができました"
      redirect_to("/")
    else
      @error_message = "emailとpasswordの記入をお願いします"
      render("users/new")
    end
  end

  #ログインページの表示
  def login_form

  end

# ログインする
  def login
    @user = User.find_by(
       email: params[:email],
       password: params[:password]
     )
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインしました"
      redirect_to("/")
    else
      @error_message = "メールアドレスまたはパスワードが誤っています。"
      render("users/login_form")
    end

  end


# ログアウト処理
def logout
  @current_user = session[:user_id] = nil
  flash[:notice] = "ログアウトしました"
  redirect_to("/users/new")
end

# マイページの表示
def mypage
  @posts = Post.where(user_id: @current_user.id).order(created_at: :desc)
end

end
