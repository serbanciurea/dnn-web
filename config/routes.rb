Rails.application.routes.draw do
  resources :project_ports
  resources :jobs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  root 'pages#home'

  resources :employees
  resources :contracts

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'services', to: 'pages#services'
  get 'projects', to: 'pages#projects'
  get 'projects/northumberland_details', to: 'projects#northumberland_details', as: 'northumberland_details'
  get 'projects/emr_details', to: 'projects#emr_details', as: 'emr_details'
end
