require 'api_constraints'

Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # `rake routes`

  # Api definition
    # the below line specifies JSON as the default API format
  # namespace :api, defaults: {format: 'json'} do
    # use scpoe to remove the version number from the API when making a request
  scope module: :v1, constraints: ApiVersion.new('v1',true) do
    resources :accounts
    resources :please_work
    resources :kegerators, param: :device_id
    resources :register
    resources :csv_files
  end

  # shortened routes, per railscast comment
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'

  # add routes for static pages
  get 'demo' => 'static_pages#demo'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'

  resources :users
  resources :sessions
  resources :static_pages
  resources :bubbles

  # root to: 'users#new'
  root to: 'bubbles#index'
end
