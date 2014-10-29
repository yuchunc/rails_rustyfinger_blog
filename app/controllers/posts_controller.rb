class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

private
  def set_posts
    @post = Post.find params[:id]
  end
end
