Rails.application.routes.draw do
  get 'myinfo/index'

  get 'receipt/index'

  get 'payment/index'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }


  root 'main#index', :as => 'root'
  
  get 'order/index', :as => 'order'
  get 'intro/index', :as => 'intro_index'
  get 'faqs/index' => 'faqs#index', :as => 'faq'
  get 'tutorials/index' => 'tutorials#index', :as => 'tutorials'
  post 'payment/index' => 'payment#index'
  post 'receipt/index' => 'receipt#index'
  get 'users/show'
end
