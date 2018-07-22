Rails.application.routes.draw do
  root 'main/index'
  devise_for :users


  get 'faqs/index' => 'faqs#index'
  get 'tutorials/index' => 'tutorials#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
