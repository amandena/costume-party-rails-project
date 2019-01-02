class SessionsController < ApplicationController
  def new
    @user = User.new
    @users = User.all
    #binding.pry
  end

  def create
    #binding.pry
    if params[:user]
      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        render 'new'
      end
    else
      #binding.pry
      @user = User.find_or_create_by(uid: auth[:uid]) do |user|
        user.email = auth[:info][:email]
        user.password = SecureRandom.hex
      end
      #binding.pry
      session[:user_id] = @user.id
      redirect_to @user
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def auth
    request.env["omniauth.auth"]
  end
end
