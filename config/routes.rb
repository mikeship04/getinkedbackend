Rails.application.routes.draw do
  resources :users, [:create]

  post '/login', to: 'auth#create'
  
end
