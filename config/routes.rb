Rails.application.routes.draw do

  root "concerts#index"
  
  resources :users
  # resources :sessions, path: :login, as: :login, only: [:new]
  # resources :sessions, path: :login, as: :login, only: [:create]
  # resources :sessions, path: :logout, as: :logout, only: [:destroy]
  
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :concerts do
    resources :attendees
  end
  
end
