Rails.application.routes.draw do
  get 'cart/index'
  get '/cart/clearCart'
  get '/cart/:id' => "cart#add"

  root to: 'pages#home'

  devise_for :users

  resources :pages do
    collection do
      get :affordable
      get :edible
      get :race
      # get :has_image
      # get :country_of_origin
    end
  end

  resources :users, only: [:show]
  resources :products do
    resources :orders, only: [:create]
  end
  resources :profiles
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
