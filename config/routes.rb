Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  root "static_pages#home"
  get "static_pages/home"
  resources :users
  get "/signup",  to: "users#new"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
