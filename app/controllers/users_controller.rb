class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
