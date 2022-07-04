Rails.application.routes.draw do
  get 'sequence/input'
  get 'sequence/output'
  get 'session/login'
  get 'session/logout'
  post 'session/create'
  resources :users
  root 'session#login'
end
