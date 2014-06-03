Rails.application.routes.draw do

  root 'properties#index'
  resources :neighborhoods
  resources :properties
  resources :ideas
  resources :users

end
