Rails.application.routes.draw do

  devise_for :users, :path => 'user'
  root 'store#index', as: 'store'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users 
   resources :carts do 
    resources :users 
    end
  resources :line_items, only: [:create]
  resources :orders, only: [:show]
  # get '/users/:id/carts/:id', to: 'carts#show', as: 'cart'

  post 'carts/:id', to: 'carts#checkout', as: 'checkout'

end
