class SessionsController < ApplicationController
  def new
    @user = User.new
    @users = User.all
    #binding.pry
  end

  def create
    #binding.pry
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
