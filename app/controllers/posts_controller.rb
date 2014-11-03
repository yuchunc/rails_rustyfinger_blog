class PostsController < ApplicationController
  before_action :set_posts, only: [:show, :edit, :delete, :update]

  def index
    @posts = Post.all_except_about
    @about = Post.find_by permalink: "about"
  end

  def show
  end

private
  def set_posts
    @post = Post.find_by permalink: params[:id]
  end
end
