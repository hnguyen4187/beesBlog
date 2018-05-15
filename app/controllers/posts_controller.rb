class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments

  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
  end

  def update
  @post = Post.find(params[:id])
  @post.update(post_params)
  @post.save
  redirect_to post_path(@post)
end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
