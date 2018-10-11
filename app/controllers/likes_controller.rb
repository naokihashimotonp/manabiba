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
  end

  def destroy
    # いいねは何をキーに引っ張ってくるんだっけ？
  end
  logger.info("[info]Likesのコントローラーの読み込みを終了")
end
