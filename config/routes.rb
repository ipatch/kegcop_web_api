Rails.application.routes.draw do
 # Api definition
  # namespace :api, defaults: { format: :json },
  #                             constraints: { subdomain: 'api' }, path: '/'  do
  #   # scope module: :v1,
  #             # constraints: ApiConstraints.new(version: 1, default: true) do
  #     # We are going to list our resources here
  #   # end
  # end
  namespace :api do
    namespace :v1 do
      resources :accounts
    end
  end

  # the below generated route is not necessary
  # get 'sessions/new'

  # delete user route
  #get 'delete' => 'users#delete'

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

  root to: 'users#new'

  # the below line specifies JSON as the default API format

  # comment the below block so it doesn't conflict with ios on rails tut
  # namespace :api, defaults: {format: 'json'} do
  #   namespace :v1 do
  #     resources :users
  #   end
  # end


  # add the below route to complete ios on rails tutorial
  # kegcop-web::Application.routes.draw do
  #   scope module: :api, defaults: { format: 'json' } do
  #     namespace :v1 do ## resources will be here
  #       namespace :events do
  #         resources :nearests, only: [:index]
  #       end
        
  #       resources :events, only: [:create, :show, :update]
  #   end
  # end

end
