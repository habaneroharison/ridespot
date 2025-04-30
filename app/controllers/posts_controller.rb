class PostsController < ApplicationController
  before_action :authenticate_user!

  def create
    @spot = Spot.find(params[:spot_id])
    @post = @spot.posts.build(post_params)
    @post.user = current_user

    if @post.save
      redirect_to spot_path(@spot), notice: "投稿しました！"
    else
      redirect_to spot_path(@spot), alert: "投稿に失敗しました"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @spot = @post.spot
    if @post.user == current_user
      @post.destroy
      redirect_to spot_path(@spot), notice: "削除しました"
    else
      redirect_to spot_path(@spot), alert: "削除できません"
    end
  end

  private

  def post_params
    params.require(:post).permit(:body, :image)
  end
end