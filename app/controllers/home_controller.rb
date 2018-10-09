class HomeController < ApplicationController
  def top
    @posts = Post.all.order(created_at: :desc)
    # render html: "Hello, World"
  end
end
