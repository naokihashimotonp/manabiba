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
    @post_id = params[:id]
    @like.save
    respond_to do |format|
      format.html {redirect_to "/"}
      format.js
    end

  end


  def destroy
    # いいねは何をキーに引っ張ってくるんだっけ？
  end
end
