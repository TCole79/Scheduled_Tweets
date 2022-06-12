Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "about", to: "about#index", as: :about

  root to: "main#index" # or can use 'get "/"'

  # Defines the root path route ("/")
  # root "articles#index"
end
