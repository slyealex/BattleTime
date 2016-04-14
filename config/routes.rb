Rails.application.routes.draw do
  get 'sessions/new'

  resources :users

  root 'home#home'

  end
