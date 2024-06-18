class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page]).per(12)
    # ピックアップ機能 Postモデルからランダムに3件の投稿を取得
    @pick_up_posts = Post.order(Arel.sql('RANDOM()')).limit(3)
    @pick_up_posts = Post.order(Arel.sql('RAND()')).limit(3)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

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

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "掲示板の更新に成功しました"
    else
      flash.now[:alert] = "掲示板の更新に失敗しました"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    post = current_user.posts.find(params[:id])
    post.destroy!
    redirect_to posts_path, notice: "掲示板を削除しました", status: :see_other
  end

  private

  def post_params
    params.require(:post).permit(:post_image, :post_image_cache, :title, :address, :start_date, :end_date)
  end
end
