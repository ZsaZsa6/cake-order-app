Rails.application.routes.draw do
  root to: "application#index"
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create", as: "session"
  delete '/sessions', to: "sessions#destroy", as: "logout"
  resources :orders, only: [:show, :edit, :update, :destroy]
  resources :customers

  resources :customers do
      resources :orders, only: [:index, :new, :create]
  end
  resources :cakes
  resources :cakes do
    resources :orders
  end
  

end
