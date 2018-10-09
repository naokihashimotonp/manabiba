class HomeController < ApplicationController
  def top
    render html: "Hello, World"
    #@posts = Post.all.order(created_at: :desc)
  end
end
