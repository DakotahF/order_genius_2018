Rails.application.routes.draw do
  resources :order_menu_items
  resources :orders
  resources :menu_items
  resources :restaurants
  root 'restaurants#index'
end
