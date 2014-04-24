FinanceTracker::Application.routes.draw do

  resources :yahoo, only: [:home, :update, :destroy, :new, :create]

  root :to => 'yahoo#home'

   post "update", to: "yahoo#update"

end
