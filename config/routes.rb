Rails.application.routes.draw do
  resources :splunks
  resources :deets
  resources :jits
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'
end
