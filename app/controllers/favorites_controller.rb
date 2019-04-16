class FavoritesController < ApplicationController
#いいね機能もindex newは不要。コメと同じ投稿画像の詳細/post_image/:id/で
	def create
		post_image = PostImage.find(params[:post_image_id])
        favorite = current_user.favorites.new(post_image_id: post_image.id)
        favorite.save
        redirect_to post_image_path(post_image)
	end

	def destroy
		post_image = PostImage.find(params[:post_image_id])
        favorite = current_user.favorites.find_by(post_image_id: post_image.id)
        favorite.destroy
        redirect_to post_image_path(post_image)
	end
end
