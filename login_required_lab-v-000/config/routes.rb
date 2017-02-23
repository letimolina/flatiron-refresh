Rails.application.routes.draw do
  get 'secrets/show', to: 'secrets#show'
  get 'sessions/show', to: 'sessions#show'
  get 'sessions/destroy', to: 'sessions#destroy'
  post 'sessions', to: 'sessions#create'
  root 'sessions#new'
end
