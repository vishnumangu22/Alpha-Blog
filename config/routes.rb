Rails.application.routes.draw do
  root "pages#home"
  get "about", to: "pages#about"

  resources :articles


  get "signup", to: "users#new"
  get "home", to: "pages#home"

  resources :users, except: [ :new ]
end
