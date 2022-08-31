Rails.application.routes.draw do
  resources :shopping_carts
  resources :tickets
  resources :giveaways
  resources :artists
  resources :users, only: [:create, :index]

  post '/login', to: 'auth#create'
  get '/me', to: "users#show"
  post '/auto_login', to: 'auth#auto_login'
end
