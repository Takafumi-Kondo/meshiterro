Rails.application.routes.draw do
#自動でルーティング追加されてる
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post_images#index'

#投稿コメは投稿画像の子要素になるので。
  resources :post_images, only: [:new, :create, :index, :show] do
  	resource :favorites, only: [:create, :destroy]
  	#単数だとそのコントローラのidがリクにない。コメント詳細は作らないのでidは不要
  	resource :post_comments, only: [:create, :destroy]
  end
end
