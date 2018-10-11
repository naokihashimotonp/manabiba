class LikesController < ApplicationController

  def show
    # いいねは何をキーに引っ張ってくるんだっけ？

  end

  def create
    @post = Post.find(params[:id])
    @like = Like.new(
      user_id: @current_user.id,
      contents_id: @post.id
    )
    @like.save
    redirect_to("/")
  end

  def destroy
    # いいねは何をキーに引っ張ってくるんだっけ？
  end
end
