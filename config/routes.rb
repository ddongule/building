Rails.application.routes.draw do
  get 'payment/index'

  devise_for :users

  root 'main#index'
  
  get 'order/index'
  get 'intro/index'
  get 'faqs/index' => 'faqs#index'
  get 'tutorials/index' => 'tutorials#index'

  post 'payment/index' => 'payment#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
