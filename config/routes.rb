Rails.application.routes.draw do
  root to: 'products#index'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products do
    resources :reviews

  end
  

end
