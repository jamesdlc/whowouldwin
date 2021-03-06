class UsersController < ApplicationController

  include AuthHelper

  before_action :find_user, only: [:show, :edit, :update]
  before_action :is_owner!, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    if current_user != nil
      flash[:notice] = "Already logged in"
      redirect_to root_path
    end
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.image_url == ""
      @user.image_url = "https://s-media-cache-ak0.pinimg.com/564x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg"
    end
    if @user.save
      login(@user)
      redirect_to root_path
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to signup_path
    end
  end

  def edit
  end

  def update
    if @user.image_url == ""
      @user.image_url = "https://s-media-cache-ak0.pinimg.com/564x/dd/49/dd/dd49dd83e894321a9402465c98ebc386.jpg"
    end
    if @user.update(user_params)
      redirect_to user_path(@user)
    end
  end

  private

  def find_user
    @user = User.find_by_id(params[:id])
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :user_name, :password, :image_url)
  end

  def current_user_is_original_poster?
    current_user.id == @user.id
  end

  def is_owner!
    auth_fail("That doesn't belong to you.", user_path) unless current_user_is_original_poster?
  end

end
