require 'api_version'

Rails.application.routes.draw do

  # The priority is based upon order of creation: 
  #...first created -> highest priority.
  # `rake routes`

  # use scpoe to remove the version number from the API when making a request
  # namespace the controllers without affecting the URI
  scope module: :v1, constraints: ApiVersion.new('v1',true) do
    resources :csv_files
  end

  # root to: 'users#new'
  root to: 'bubbles#index'
end
