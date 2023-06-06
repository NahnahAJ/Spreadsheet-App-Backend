Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :vi do
      resources :users, only: [:index, :create, :show, :update, :destroy]
      resources :properties, only: [:index, :create, :show, :update, :destroy]
    end
  end
end
