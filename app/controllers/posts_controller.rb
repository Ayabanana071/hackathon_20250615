class PostsController < ApplicationController
  before_action :set_post, only: %i[show]
  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result(distinct: true).includes.order(created_at: :desc).page(params[:page]).per(10)
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
