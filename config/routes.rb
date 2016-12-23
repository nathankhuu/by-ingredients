Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get '/recipes/show', to: 'recipes#show'
  get '/ingredients/new', to: 'ingredients#new'
  post '/ingredients/new', to: 'ingredients#create'
  patch '/ingredients/new' => 'ingredients#show', as: 'new'
end