Rails.application.routes.draw do
  devise_for :users
  resources :orders, only: [:update]
  resources :products, only: [:index]
  resources :purchases, only: [:index]
  get '/purchases/new/:id', to: 'purchases#new', as: 'new_purchase'
  delete '/purchases/:id', to: 'purchases#destroy', as: 'purchase'
  root 'products#index'
end
