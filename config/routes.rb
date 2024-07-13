Rails.application.routes.draw do
  # トップページ
  root "static_pages#top"

  # マイページ、ユーザー登録
  resources :users, only: [:new, :create, :show, :edit, :update]

  #ログイン、ログアウト
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # グーグルログイン
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback"
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider

  # イベント一覧
  resources :posts do
    collection do
      get 'pickup'
    end
  end

  # ルート検索
  resources :routes, only: [:new, :create]

  # おすすめのスポット
  get 'spot', to: 'spots#index'
  get 'spot/restaurants', to: 'spots#restaurants'
  post 'spot/restaurants', to: 'spots#restaurants', as: 'restaurants'
  get 'spot/rest_areas', to: 'spots#rest_areas'
  post 'spot/rest_areas', to: 'spots#rest_areas', as: 'rest_areas'
  get 'spot/tourist_spot', to: 'spots#tourist_spot'
  post 'spot/tourist_spot', to: 'spots#tourist_spot', as: 'tourist_spot'

  # 道の駅スタンプラリー
  resources :michi_no_ekis, only: [:index]
  resources :stamps, only: [:create, :index]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
