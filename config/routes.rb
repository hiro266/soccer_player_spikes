Rails.application.routes.draw do
  root 'players#index'
  resources :users, only: %i[edit update]
  namespace :admin do
    root 'dashboards#index'
    resources :users, only: %i{index show edit update destroy}
    resources :spikes
    resources :players
  end
  get    '/login', to: 'user_sessions#new'
  delete '/logout',  to: 'user_sessions#destroy'
  # ゲストユーザーログイン
  get 'guest_login', to: 'user_sessions#guest_login'
  # Twitterログイン
  get 'oauth/callback', to: 'oauths#callback'
  post 'oauth/callback', to: 'oauths#callback'
  get 'oauth/:provider', to: 'oauths#oauth', as: :auth_at_provider
  # 開発・テスト用管理ユーザーログイン
  if Rails.env.development? || Rails.env.test?
    get 'admin_login', to: 'user_sessions#admin_login' 
  end
end
