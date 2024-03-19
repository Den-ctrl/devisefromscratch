Rails.application.routes.draw do
  get 'section/index'
  get 'create_section/index'
  post 'create_section/index', to: 'create_section#create'  
  devise_for :users
  root 'main#home'
  resources :sections 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
