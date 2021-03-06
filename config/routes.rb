Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts, only: [:index, :new, :create, :show]
  resources :users, only: [:show, :edit, :update]
end
