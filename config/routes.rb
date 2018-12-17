Rails.application.routes.draw do
  devise_for :users
  root to: 'static#index'
  resources :lists do
    resources :list_items, shallow: true
  end
end
