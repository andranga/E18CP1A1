Rails.application.routes.draw do
  Rails.application.routes.draw do
      devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'products/:id/edit', to: 'products#edit'
  resources :products

  root 'products#index'

end
