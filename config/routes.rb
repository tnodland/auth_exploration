Rails.application.routes.draw do
  root "home#home"

  resources :users, only: [:new]
end
