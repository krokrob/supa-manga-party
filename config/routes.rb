Rails.application.routes.draw do
  get 'homepage/home'
  root to: "homepage#home"

  devise_for :users
  resources :persos, only: [:index, :show, :new, :create, :destroy]
end
