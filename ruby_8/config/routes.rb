Rails.application.routes.draw do
  get 'sequence/input'
  get 'sequence/view'
  root 'sequence#input'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
