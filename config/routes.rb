Rails.application.routes.draw do

  root 'home#home'

  resources :users

  resources :sessions

  resources :stores do
    resources :events, only: [:show, :create, :destroy] do
      member do
        post :attend
      end
    end
  end




end
