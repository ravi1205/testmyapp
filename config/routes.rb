Rails.application.routes.draw do
  resources :order_items
    get 'cart', to: 'cart#show'
  get 'search', to: 'menu#search'
  resources :categories
  devise_for :users
  resources :products
  root 'books#home'
  get 'menu', to: 'menu#index'
  get 'catering', to: 'books#catering'
  get 'info', to: 'books#info'
  get 'pages/home'
  get 'products', to: 'product#show'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
