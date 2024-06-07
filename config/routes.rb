Rails.application.routes.draw do
  root "static_pages#top"
  resources :users, only: %i[new create]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :posts
  get 'post', to: 'posts#index'

  resources :routes, only: [:new, :create]

  get 'spot', to: 'spots#index'
  get 'spot/restaurants', to: 'spots#restaurants'
  post 'spot/restaurants', to: 'spots#restaurants', as: 'restaurants'
  get 'spot/rest_areas', to: 'spots#rest_areas'
  post 'spot/rest_areas', to: 'spots#rest_areas', as: 'rest_areas'
  get 'spot/tourist_spot', to: 'spots#tourist_spot'
  post 'spot/tourist_spot', to: 'spots#tourist_spot', as: 'tourist_spot'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
