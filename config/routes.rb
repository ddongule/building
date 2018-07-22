Rails.application.routes.draw do
  devise_for :users

  root 'main#index'
  
  get 'order/index', :as => 'order'
  get 'intro/index', :as => 'intro_index'
  get 'faqs/index' => 'faqs#index', :as => 'faq'
  get 'tutorials/index' => 'tutorials#index', :as => 'tutorials'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
