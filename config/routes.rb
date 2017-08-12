Rails.application.routes.draw do

  root "concerts#index"
  
  resources :users
  
  resources :concerts do
    resources :attendees
  end
  
end
