Rails.application.routes.draw do

  devise_for :users
  resources :posts

  root 'posts#index'

  get 'faqs/index' => 'faqs#index'
  get 'tutorials/index' => 'tutorials#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end