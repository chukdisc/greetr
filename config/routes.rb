Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :greetings, only: [:create]

  resource :dashboard, only: [:show]

  root to: "sessions#new"
end
