class CommentsController < ApplicationController


def new
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new

end

def create
  @post = Post.find(params[:post_id])
  @user = @post.user
  @comment = @post.comments.new(comment_params)
  if @comment.save
    redirect_to user_post_path(@user, @post)
  else
    render :new
  end
end

def show
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
end

def edit
  @post = Post.find(params[:post_id])
  @comment = Comment.find(params[:id])
end

def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  flash[:notice] = "Comment successfully deleted!"
  redirect_to user_post_path(@post.user, @post)
end

def update
  @comment = Comment.find(params[:id])
  if @comment.update(post_params)
    flash[:notice] = "Comment successfully updated!"
    redirect_to user_post_path(@post.user, @post)
  else
    render :edit
  end
end

private
def comment_params
  params.require(:comment).permit(:body, :date, :post_id)
end
end
