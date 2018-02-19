require 'api_version'

Rails.application.routes.draw do

  # The priority is based upon order of creation: 
  #...first created -> highest priority.
  # `rake routes`

  # Api definition
    # the below line specifies JSON as the default API format
  # namespace :api, defaults: {format: 'json'} do
    # use scpoe to remove the version number from the API when making a request
  scope module: :v1, constraints: ApiVersion.new('v1',true) do
    resources :csv_files
  end

  # root to: 'users#new'
  root to: 'bubbles#index'
end
