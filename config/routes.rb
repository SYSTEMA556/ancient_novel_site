Rails.application.routes.draw do
  resources :novels do
    member do
      post :confirm_password
      get :password_prompt
    end
  end
  resources :comments

  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "/" => "novels#index"
  # Defines the root path route ("/"
end