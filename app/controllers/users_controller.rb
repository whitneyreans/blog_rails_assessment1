class UsersController < ApplicationController

  def index
    @Users = User.all
  end

  def show
    @user = current_user
    @posts = @user.posts

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to your blog."
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
