class PostImage < ApplicationRecord
#has_manyの逆。PostImageモデルからuse_idに紐づいてUserモデルを参照できるよう。
	belongs_to :user#紐づくのは1つのuse_idなので単数型
end