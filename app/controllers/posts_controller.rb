class PostsController < ApplicationController

  def index
  end

private
  def set_posts
    @post = Post.find params[:id]
  end
end
