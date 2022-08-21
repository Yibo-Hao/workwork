Rails.application.routes.draw do
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/', to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :validation_codes, only: [:create]
      resources :session, only: [:create, :destroy]
      get :me, to: 'me#show'
    end
  end
end
