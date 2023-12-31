Rails.application.routes.draw do
  resources :comments
  resources :publications do
    resources :comments, only: [:create]
  end
  get 'homes/index'
  devise_for :users, controllers: {
  sessions: "users/sessions",
  registrations: "users/registrations"}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "publications#index"
  get "/publications", to: "publications#index",  as: "user_root"
end
