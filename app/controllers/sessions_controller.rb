class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to current_user
      flash[:notice] = "Successfully logged in."
     else
      redirect_to '/login'
      flash[:notice] = "Invalid e-mail or password."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
    flash[:notice] = "Successfully logged out. See ya later!"
  end

end
