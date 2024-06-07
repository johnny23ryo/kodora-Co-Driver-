class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "投稿が成功しました。"
      redirect_to posts_path
    else
      flash[:alert] = "投稿に失敗しました。"
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:post_image,:post_image_cache, :title, :location, :start_date, :end_date)
  end
end
