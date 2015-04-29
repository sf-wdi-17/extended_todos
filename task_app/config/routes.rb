Rails.application.routes.draw do
  devise_for :authors
  root to: 'authors#index'

  get '/authors', to: 'authors#index'
  get '/authors/:id', to: 'authors#show'
  get '/authors/:id/todos', to: 'todos#index'

  post '/authors/:id/todos', to: 'todos#create'
end
