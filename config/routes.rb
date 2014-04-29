FinanceTracker::Application.routes.draw do

  resources :yahoo, only: [:home, :destroy, :new, :create]

  get "new", to: "yahoo#new"
  get "update", to: "yahoo#update"
  get "destroy", to: "yahoo#test"
  post "delete", to: "yahoo#delete"
  root :to => 'yahoo#home'

   # post "update", to: "yahoo#update"

  end
