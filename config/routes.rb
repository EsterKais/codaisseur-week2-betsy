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
      get :by_race
      get :europe
      get :north_america
      get :asia
      get :latino
      get :female
      get :male
      get :young
      get :mature
      get :old
    end
  end

  resources :orders, only: [:new, :create, :show]
  resources :users, only: [:show]
  resources :products
  resources :profiles
  resources :photos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
