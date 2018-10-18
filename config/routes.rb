Rails.application.routes.draw do
  resources :hosts
  resources :items
  resources :renters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hosts', to: 'hosts#index'
  get '/items', to: 'items#index'
  get '/renters', to: 'renters#index'
end
