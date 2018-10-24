Rails.application.routes.draw do
  resources :hosts
  resources :items
  resources :renters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/hosts/:id', to: 'hosts#show'
  get '/hosts', to: 'hosts#index'
  post '/hosts', to: 'hosts#create'

  get '/items', to: 'items#index'
  post '/items', to: 'items#create'
  put '/items/:id', to: 'items#update'
  patch '/return/:id', to: 'items#updatenull'
  delete 'items/:id', to: 'items#destroy'

  get '/renters', to: 'renters#index'
  get '/renters/:id', to: 'renters#show'
  post '/renters', to: 'renters#create'

  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'

end
