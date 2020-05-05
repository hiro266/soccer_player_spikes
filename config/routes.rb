Rails.application.routes.draw do
  root 'players#index'
  resources :users, only: %i[edit update]
  get    '/login', to: 'user_sessions#new'
  delete '/logout',  to: 'user_sessions#destroy'
  # ゲストユーザーログイン
  get 'guest_login', to: 'user_sessions#guest_login'
  # Twitterログイン
  get 'oauth/callback', to: 'oauths#callback'
  post 'oauth/callback', to: 'oauths#callback'
  get 'oauth/:provider', to: 'oauths#oauth', as: :auth_at_provider
end
