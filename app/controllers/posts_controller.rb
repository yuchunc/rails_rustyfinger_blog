class PostsController < ApplicationController
  before_action :set_posts, only: [:show, :edit, :delete, :update]

  def index
    @posts = Post.all
  end

  def show
  end

private
  def set_posts
    @post = Post.find_by permalink: params[:id]
  end
end
