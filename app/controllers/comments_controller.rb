class CommentsController < ApplicationController


def new
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new

end

def create
  @post = Post.find(params[:post_id])
  @user = @post.user
  @comment = @post.comments.create(comment_params)


  if @comment.save
    redirect_to user_post_path(@user, @post)
  account_sid = 'ACc6964c8a4a3db68d96c62200ef279648'
  auth_token = '9492f8b55bb69157dae5392c45537d2c'
  @client = Twilio::REST::Client.new account_sid, auth_token

  message = @client.account.messages.create(:body => "You have a comment!",
  :To => "9183132501",
  :From => "9189217006")
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
  @post = Post.find(params[:post_id])
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
