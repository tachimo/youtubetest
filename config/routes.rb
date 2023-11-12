Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'products#index'
  resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
end
