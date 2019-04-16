class PostImagesController < ApplicationController

	def new
		@post_image = PostImage.new
	end
#post_image_paramsは入力されたのが投稿データとして許可されてるパラメータかチェックしてる。
	def create
		@post_image = PostImage.new(post_image_params)
		@post_image.user_id = current_user.id
		#バリデーション追加したのでif文に変更
		if @post_image.save
			redirect_to post_images_path
		else
			render :new#redirect_toはルーティングから処理
		end
	end
#PostImage.allから変更。1ページ分の決められた数だけ取得(pageメソッドはkaminariGem)
	def index
		@post_images = PostImage.page(params[:page]).reverse_order
	end

	def show
		@post_image = PostImage.find(params[:id])
		@post_comment = PostComment.new
	end
#resourcesルーティングのdestroyからきたのを元に探しインスタンス変数へ
	def destroy
		@post_image = PostImage.find(params[:id])
		@post_image.destroy
		redirect_to post_images_path
	end

#投稿データのストロングパラメータ
private
	def post_image_params
        params.require(:post_image).permit(:shop_name, :image, :caption)
    end
end

