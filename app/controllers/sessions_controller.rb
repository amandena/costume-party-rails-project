class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if auth
      @user = User.find_or_create_by(uid: auth[:uid]) do |user|
        user.email = auth[:info][:email]
        user.password = SecureRandom.hex
      end
      session[:user_id] = @user.id
      redirect_to @user
    else
      @user = User.find_by(email: params[:user][:email])
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        @user = User.new
        flash[:error] = "*You must log in with an email and password.*"
        render 'new'
      end
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
