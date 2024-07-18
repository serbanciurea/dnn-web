Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  # authenticate :user, ->(user) { user.admin? } do
  #   namespace :admin do
  #     resources :jobs
  #     # resources :dashboard, only: [:index]
  #     # other admin routes
  #   end
  # end

  resources :project_ports, only: [:index] do
    collection do
      get 'filter_by_department'
    end
  end
  resources :project_ports
  resources :jobs
  get 'contacts/new', to: 'contacts#new', as: 'new_contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  resources :employees
  resources :contracts
  # resources :users

  resources :users do
    patch :approve, on: :member
    resources :competencies, only: [:new, :create, :edit, :update, :destroy]
  end

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'services', to: 'pages#services'
  get 'projects', to: 'pages#projects'
  get 'careers', to: 'pages#careers'
  get 'map', to: 'pages#map'
  get 'projects/northumberland_details', to: 'projects#northumberland_details', as: 'northumberland_details'
  get 'projects/emr_details', to: 'projects#emr_details', as: 'emr_details'
end
