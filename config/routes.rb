Rails.application.routes.draw do
#自動でルーティング追加されてる
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post_images#index'
end
