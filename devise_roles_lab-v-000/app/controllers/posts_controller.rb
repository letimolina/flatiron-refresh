class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:edit, :show, :update]
  before_action :authorize_user!, only: [:edit, :update]

  def create
    binding.pry
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  def update
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private
  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def authorize_user!
    raise "Unauthorized!" unless current_user

    unless current_user == @post.user || current_user.vip? || current_user.admin?
      redirect_to post_path(id: @post.id), alert: "Access denied."
    end
  end
end
