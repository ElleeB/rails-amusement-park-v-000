Rails.application.routes.draw do
  root 'welcome#home'

  resources :users
  resources :attractions
  resources :rides, only: [:create]

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'


end
