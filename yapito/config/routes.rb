Rails.application.routes.draw do
  Rails.application.routes.draw do
      devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
    end
  get 'users/profile'
  resources :products
  resources :sales, only: [:create, :show]
  post 'products/new', to: "products#create"
  post 'sales/:id', to: 'sales#create', as: 'sale_new'

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
