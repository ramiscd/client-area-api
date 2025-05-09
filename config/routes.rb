Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/users", to: "users#index"
  post "/users", to: "users#create"
  # resources :products

  get "/applications", to: "applications#index"
  get "/applications/:id", to: "applications#show" 
  post "/applications", to: "applications#create"

  get "/forms", to: "forms#index"
  post "/forms", to: "forms#create"


  get "/statuses", to: "statuses#index"
  post "/statuses", to: "statuses#create"

  get "/status_changes", to: "status_changes#index"
  post "/status_changes", to: "status_changes#create"
  # get "/applicants_status_histories", to: "/applicants_status_histories#index"
  # post "/applicants_status_histories", to: "/applicants_status_histories#create"

  # Defines the root path route ("/")
  # root "posts#index"
end
