Rails.application.routes.draw do
  root "users#new"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :texts
  resources :comments
  resources :show_pdf, only: :index
end
