class PostImage < ApplicationRecord
#has_manyの逆。PostImageモデルからuse_idに紐づいてUserモデルを参照できるよう。
	belongs_to :user#紐づくのは1つのuse_idなので単数型
#modelにも画像をアップロードするためのメソッド（attachment_field）を
	attachment :image
#PostCommentモデルが複数持てる。
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end
end
