Rails.application.routes.draw do
  get 'receipt/index'

  get 'payment/index'

  devise_for :users

  root 'main#index', :as => 'root'
  
  get 'order/index', :as => 'order'
  get 'intro/index', :as => 'intro_index'
  get 'faqs/index' => 'faqs#index', :as => 'faq'
  get 'tutorials/index' => 'tutorials#index', :as => 'tutorials'

  post 'payment/index' => 'payment#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
