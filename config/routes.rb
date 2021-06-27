Rails.application.routes.draw do
  resources :reviews
  resources :performances
  #only create route from bundle
  resources :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
  get "/mypage", to: "users#mypage"
end
