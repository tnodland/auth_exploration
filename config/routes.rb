Rails.application.routes.draw do
  root "home#home"

  resources :users, only: [:new, :index, :show, :create]
end
