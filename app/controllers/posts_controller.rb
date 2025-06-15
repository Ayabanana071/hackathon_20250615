class PostsController < ApplicationController
  before_action :set_post, only: %i[show]
  def index
    @posts = Post.includes(:user).order(id: :desc)
  end

  def show; end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.expect(post: [:content])
  end
end
