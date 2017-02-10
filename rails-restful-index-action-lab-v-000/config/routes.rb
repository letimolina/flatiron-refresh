Rails.application.routes.draw do
  get 'students/index'

  get '/students', to: 'students#index'
end
