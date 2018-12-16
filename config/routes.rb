Rails.application.routes.draw do
  resources :costume_parties
  resources :costumes
  resources :users

  get '/login', to: 'sessions#new'
  get '/auth/google/callback', to: 'sessions#create'
  post '/sessions/create', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
