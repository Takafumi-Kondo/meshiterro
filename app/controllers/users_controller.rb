class UsersController < ApplicationController
#マイページ
  def show
  	@user = User.find(params[:id])
#ここもページングのpageメソッド使用。全て表示されないように。@post_imagesにはユーザに紐づいた投稿のみ渡せる
  	@post_images = @user.post_images.page(params[:page]).reverse_order
  end
#プロフ編集。form_for使用するのでインスタンス変数へ
  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private
  def user_params
  	params.require(:user).permit(:name, :profile_image)
  end
end
