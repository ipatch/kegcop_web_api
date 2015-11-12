require 'api_constraints'

Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # get  'csvfiles'    => 'application#index'

  # Api definition
    # the below line specifies JSON as the default API format
  namespace :api, defaults: {format: 'json'} do
    # use scpoe to remove the version number from the API when making a request
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
    # namespace :v1 do
      resources :accounts
      resources :please_work
      resources :kegerators, param: :device_id
      resources :register
      resources :csv_files
    end
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

  root to: 'users#new'

  # comment the below block so it doesn't conflict with ios on rails tut
  # namespace :api, defaults: {format: 'json'} do
  #   namespace :v1 do
  #     resources :users
  #   end
  # end

  # add the below route to complete ios on rails tutorial
  # kegcop-web::Application.routes.draw do
end