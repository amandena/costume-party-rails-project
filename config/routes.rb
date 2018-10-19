Rails.application.routes.draw do
  resources :costume_parties
  resources :costumes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
