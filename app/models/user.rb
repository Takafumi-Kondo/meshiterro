class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#:〜〜はのdevise機能名
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#1:N関係(ユーザ情報1:画像投稿したユーザ情報複数)になるモデル複数型を。
  has_many :post_images, dependent: :destroy

end
