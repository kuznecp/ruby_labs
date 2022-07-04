Rails.application.routes.draw do
  root 'tv_set#parse'
  get 'tv_set/parse'
end
