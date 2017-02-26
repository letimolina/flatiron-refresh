Rails.application.routes.draw do


  resources :notes
  resources :sessions, only: :new
  root 'welcome#home'
end
