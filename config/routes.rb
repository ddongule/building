Rails.application.routes.draw do

  get 'mains/index'

  devise_for :users
  resources :posts

  root 'posts#index'
  
  get 'faqs/index' => 'faqs#index'
  
  get 'tutorials/index' => 'tutorials#index' 
    
  get 'posts/show/:id' => 'posts#show'

  post 'posts/show/:post_id/comments/create' => 'comments#create'

  get 'posts/show/:post_id/comments/destory/:comment_id' => 'comments#destory'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end