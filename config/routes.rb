Rails.application.routes.draw do
  resources :users, only: [:create]

  post '/login', to: 'auth#create'
  get '/me', to: "users#show"
end
