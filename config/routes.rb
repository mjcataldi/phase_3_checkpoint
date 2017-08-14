Rails.application.routes.draw do

  root "concerts#index"
  
  resources :users
  resources :sessions, path: :logout, as: :logout, only: [:destroy]
  resources :sessions, only: [:new, :create]
  
  resources :concerts do
    resources :attendees
  end
  
end
