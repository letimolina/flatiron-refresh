class UsersController < ApplicationController

  before_action :find_and_set_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: :destroy

  def index
  end

  def show
    redirect_to root_path, alert: "Access denied." unless current_user.id == @user.id
  end

  def new
    @user = User.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    @user.destroy
    redirect_to root_path
  end

  private
  def user_params
    params.require(:user).permit(email: params[:email], password: param[:password])
  end

  def authorize_user!
    redirect_to root_path unless current_user.admin?
  end

  def find_and_set_user
    @user = User.find(params[:id])
  end
end
