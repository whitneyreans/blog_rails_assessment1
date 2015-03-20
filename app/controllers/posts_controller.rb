class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @user = User.find(params[:user_id])
    @post = @user.posts.new

  end

  def create
    @user = User.find(params[:user_id])
    @post = @user.posts.new(post_params)
    if @post.save
      flash[:notice] = "Post has been saved successfully"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def edit
    @post = Post.find(params[:id])
    @user = User.find(params[:user_id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post deleted!"
    redirect_to user_path(@post.user)
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post successfullu updated!"
      redirect_to user_path(@post.user)
    else
      render :edit
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :date, :user_id)
  end
end
