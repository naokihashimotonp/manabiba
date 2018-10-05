class LikesController < ApplicationController
  logger.info("[info]Likesコントローラーの読み込みをスタート。")

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
    # 本番環境では取り除く
    logger.debug("[debug]変数の保存は成功している。")
    redirect_to("/")
  end

  def destroy
    # いいねは何をキーに引っ張ってくるんだっけ？
  end
  logger.info("[info]Likesのコントローラーの読み込みを終了")
end
