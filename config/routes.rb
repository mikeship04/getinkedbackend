Rails.application.routes.draw do
  resources :users, only: [:create, :index]

  post '/login', to: 'auth#create'
  get '/me', to: "users#show"
end
