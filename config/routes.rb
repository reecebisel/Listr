Rails.application.routes.draw do
  devise_for :models
  resources :categories
  get 'categories/index'
  get 'categories/show'
  get 'categories/new'
  get 'categories/edit'
  get 'categories/create'
  get 'categories/update'
  get 'categories/destroy'
  resources :list_items
  resources :lists
  devise_for :users
  root to: 'static#index'
end
