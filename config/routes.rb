Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'

  devise_for :users

  resources :users, only: [:show]
  resources :products
  resources :profiles
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
