Rails.application.routes.draw do
  resources :authors, only: [:new, :show, :edit, :create, :update]
  resources :posts, only: [:new, :show, :edit, :create, :update]
end
