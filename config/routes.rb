Rails.application.routes.draw do
  devise_for :users
  resource :persos, only: [:index, :new, :create, :destroy]
  resources :persos, only: [:show]
end
