Rails.application.routes.draw do
  get 'stores/new'

  get 'stores/index'

  get 'events/new'

  get 'events/index'

  get 'sessions/new'

  resources :users
  resources :sessions

  root 'home#home'

  end
