class SearchController < ApplicationController

  def show
    @post_contents = Post.search(params[:search]).order(created_at: :desc)
  end


end
