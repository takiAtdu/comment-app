Rails.application.routes.draw do
  get 'texts/index'
  get 'texts/edit'
  get 'texts/update'
  get 'texts/create'
  get 'texts/destroy'
  get 'comments/index'
  get 'comments/edit'
  get 'comments/update'
  get 'comments/create'
  get 'comments/destroy'
  root "users#new"
  resources :users
end
