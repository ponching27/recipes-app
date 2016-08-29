Rails.application.routes.draw do
  devise_for :users
	resources :recipes
	resources :articles
	root "recipes#index"
 end
