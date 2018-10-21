Rails.application.routes.draw do
  resources :hosts
  resources :items
  resources :renters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hosts/:id', to: 'hosts#show'
  get '/hosts', to: 'hosts#index'
  get '/items', to: 'items#index'
  post '/items', to: 'items#create'
  get '/renters', to: 'renters#index'
end
