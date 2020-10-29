Rails.application.routes.draw do
  root to: "application#index"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create", as: "session"
  delete '/sessions', to: "sessions#destroy", as: "logout"
  
  
  resources :customers 
  resources :orders, only: [:show, :create, :edit, :update, :destroy]
  resources :cakes, only: [:new, :create, :edit, :update, :destroy]
  resources :tiers, only: [:create, :edit, :update, :destroy]

  resources :customers do
      resources :orders, only: [:index, :new]
  end
 
  resources :orders do 
      resources :cakes, only: [:show]
  end
 
  
  resources :cakes do
      resources :tiers, only: [:new]
  end
end
