Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      resources :validation_codes, only: [:create]
      resources :session, only: [:create, :destroy]
      resource :me, only: [:show]
    end
  end
end
