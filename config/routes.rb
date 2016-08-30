Rails.application.routes.draw do
  root 'homes#index'

  get 'homes/contact'

  get 'homes/about'

  get 'homes/news'

  devise_for :users
  devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy' 
end
	resources :recipes
	resources :articles
 end
