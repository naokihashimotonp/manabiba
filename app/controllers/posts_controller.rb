class PostsController < ApplicationController
before_action :forbid_logout_user
impressionist :actions => [:show]

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
    impressionist(@post, nil, :unique　=> [:session_hash])
  end

  def create_comment
    @post = Post.find_by(id: params[:id])
    @comment = @post.comments.build(
      contents: params[:contents],
      user_id: @current_user.id)
    @comment.save

    respond_to do |format|
      if @comment.save
        flash[:notice] = "コメントに成功しました"
        # htmlでの処理なので複数形の@comments
        format.html {redirect_to @comment}
        # jsファイルでの処理へ飛ぶ
        format.js
      else
        flash[:notice] = "コメントには入力が必要です"
      end

    end

    # 保存できたか否かで分岐
    # if @comments.save
    #  redirect_to("/posts/#{params[:id]}")
    # else
    #  redirect_to("/posts/#{params[:id]}")
    # end
  end


end
