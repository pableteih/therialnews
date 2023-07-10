Rails.application.routes.draw do
  resources :comments
  resources :publications
  get 'homes/index'
  devise_for :users, controllers: {
  sessions: "users/sessions",
  registrations: "users/registrations"}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
  get "/publications", to: "publications#index",  as: "user_root"
end
