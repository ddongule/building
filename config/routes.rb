Rails.application.routes.draw do
  get 'myinfo/index'

  get 'receipt/index'

  get 'payment/index'

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }


  root 'main#index', :as => 'root'
  
  get 'main/faq' => 'main#faq', :as => 'faq'
  get 'main/intro'=> 'main#intro', :as => 'intro_index'
  get 'main/tutorial' => 'main#tutorial', :as => 'tutorials'


  get 'order/index', :as => 'order'
  post 'payment/index' => 'payment#index', :as => 'payment'
  post 'receipt/index' => 'receipt#index'
  get 'users/show'
end
