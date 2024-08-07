Rails.application.routes.draw do

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # Root path of the application
  root 'pages#home'

  # Resources routes
  resources :contacts, only: [:new, :create]

  resources :project_ports, only: [:index] do
    collection do
      get 'filter_by_department'
    end
  end
  resources :project_ports, except: [:index]

  resources :jobs do
    post 'send_email_to_user', on: :member
    post 'send_email_to_all', on: :member
  end

  resources :employees
  resources :contracts

  resources :users do
    patch :approve, on: :member
    patch :reject, on: :member
    resources :competencies, only: [:new, :create, :edit, :update, :destroy]
  end

  # Static pages
  get 'about', to: 'pages#about'
  get 'contact_us', to: 'pages#contact'
  get 'services', to: 'pages#services'
  get 'projects', to: 'pages#projects'
  get 'careers', to: 'pages#careers'
  get 'map', to: 'pages#map'
  get 'privacy_policy', to: 'pages#privacy_policy'
  get 'terms_and_conditions', to: 'pages#terms_and_conditions'
  get 'projects/northumberland_details', to: 'projects#northumberland_details', as: 'northumberland_details'
  get 'projects/emr_details', to: 'projects#emr_details', as: 'emr_details'

  # Health check endpoint
  get "up" => "rails/health#show", as: :rails_health_check
end
