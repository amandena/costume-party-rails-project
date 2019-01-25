Rails.application.routes.draw do
  resources :costume_parties
  resources :costumes
  resources :users

  get '/login', to: 'sessions#new'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  get '/sessions/create', to: 'sessions#create'
  post '/sessions/create', to: 'sessions#create'
  patch '/sessions/create', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'

  root 'static_pages#home'
end
