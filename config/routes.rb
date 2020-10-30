Rails.application.routes.draw do
  root to: "application#index"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create", as: "session"
  delete '/sessions', to: "sessions#destroy", as: "logout"
  
  
  resources :customers 
  resources :orders
  resources :cakes
  

  resources :customers do
      resources :orders, only: [:index, :new]
  end
    resources :cakes do 
        resources :tiers
    end
 end
