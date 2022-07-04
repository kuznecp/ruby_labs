Rails.application.routes.draw do
  root 'sequence#input'
  get 'sequence/input'
  get 'sequence/output'
end
