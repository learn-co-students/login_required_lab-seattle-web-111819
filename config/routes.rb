Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "sessions#new", as: "login"
  post "/", to: "sessions#create"
  get "welcome", to: "sessions#show", as: "welcome"
  get "secret", to: "secrets#show", as: "secret"
  delete "/", to: "sessions#destroy", as: "logout"
end
