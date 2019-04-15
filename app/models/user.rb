class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#:〜〜はのdevise機能名
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
