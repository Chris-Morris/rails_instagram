Rails.application.routes.draw do
  resources :posts do
    resources :comments
    resource :like
  end

  devise_for :users

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"
end
