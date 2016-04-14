Rails.application.routes.draw do

  root 'home#home'

  resources :users
  resources :sessions
  resources :stores
  resources :events

end
