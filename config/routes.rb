Rails.application.routes.draw do
  root to: "application#index"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create", as: "session"
  delete '/sessions', to: "sessions#destroy", as: "logout"
  
  
  resources :customers
  resources :orders, only: [:create, :edit, :update, :destroy]
  resources :cakes
  resources :tiers

  resources :customers do
      resources :orders, only: [:index, :new]
  end
    resources :cakes do 
        resources :tiers
    end
  resources :orders do 
    resources :cakes
  end
 end
