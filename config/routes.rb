Rails.application.routes.draw do
  resources :orders
  resources :menu_items
  resources :restaurants
  root 'restaurants#index'
end
