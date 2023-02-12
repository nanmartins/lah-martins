Rails.application.routes.draw do
  get 'contacts/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "categories#index"

  resources :categories, only: [:index, :show, :new, :create, :destroy]
  resources :contacts, only: [:new, :create]

end
