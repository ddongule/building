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
  get 'main/new_order' => 'main#new_order', :as => 'new_order'
  post 'payment/index' => 'payment#index', :as => 'payment'
  post 'receipt/index' => 'receipt#index'
  
  get 'users/show'
end
