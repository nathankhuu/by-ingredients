Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get '/recipes/show', to: 'recipes#show'
  get '/ingredients/new', to: 'ingredients#new'
  get '/ingredients/create', to: 'ingredients#create'
  get '/ingredients/show', to: 'ingredients#show'
  post '/ingredients/new', to: 'ingredients#create'
  patch '/ingredients/new' => 'ingredients#create', as: 'create'
end