class HomeController < ApplicationController
  before_action :forbid_logout_user

  def top
    @posts = Post.all.order(created_at: :desc)
    # render html: "Hello, World"
  end
end
