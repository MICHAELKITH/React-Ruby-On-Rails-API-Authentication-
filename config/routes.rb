Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :sessions, only [:create]
  delete :logout to: "sessions#logout"
  get :logged_in to: "sessions#logged_in"
  resources :registrations ,only: [:create]
  root to: "static#home"
end
