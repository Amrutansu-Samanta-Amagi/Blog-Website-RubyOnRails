Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  root "articles#index"
  # Defines the root path route ("/")
  # root "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/:id" , to: "articles#show"
  # get "/new" , to: "articles#new"
  # post "/create" , to: "articles#create"
  resources :articles do
    resources :comments
  end
end