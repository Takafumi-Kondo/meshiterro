class UsersController < ApplicationController
#マイページ
  def show
  	@user = User.find(params[:id])
#ここもページングのpageメソッド使用。全て表示されないように。@post_imagesにはユーザに紐づいた投稿のみ渡せる
  	@post_images = @user.post_images.page(params[:page]).reverse_order
  end
end
