class PostsController < ApplicationController

  def new

  end

  def create
      @post = Post.new(
        contents: params[:contents],
        user_id: session[:user_id]
      )
      if @post.save
        redirect_to("/")
      else
        render("/posts/new")
      end
  end

  def show
    @post = Post.find_by(id: params[:id])
    @comments = @post.comments
  end

  def create_comment
    @post = Post.find_by(id: params[:id])
    @comments = @post.comments.build(
      contents: params[:contents])
    if @comments.save
     redirect_to("/posts/#{params[:id]}")
    else
     render("/posts/#{params[:id]}")
    end
  end


end
