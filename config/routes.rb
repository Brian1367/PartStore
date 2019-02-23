Rails.application.routes.draw do
   root 'homes#index'
   root 'carts#shopping_cart'
  devise_for :users

  resources :cars do
    resources :parts, only: [:index, :show] do
      resources :order_items

    end
  end

  resources :order_items, only: [:create] do
    resource :carts, only: [:new]
end
  resource :carts
end
