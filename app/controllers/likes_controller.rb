class LikesController < ApplicationController
  logger.debug("[debug]Likesコントローラーの読み込みをスタート。")

  def show
    # いいねは何をキーに引っ張ってくるんだっけ？

  end

  def create
    @post = Post.find(params[:id])
    @like = Like.new(
      user_id: @current_user.id,
      contents_id: @post.id
    )
    logger.debug("[debug]変数への受け渡しは成功している。")
    # pで止める

    # バインディングプライは本番前に消す

    @like.save
    logger.debug("[debug]変数の保存は成功している。")
    redirect_to("/")
  end

  def destroy
    # いいねは何をキーに引っ張ってくるんだっけ？
  end
  logger.debug("[debug]Likesのコントローラーの読み込みを終了")
end
