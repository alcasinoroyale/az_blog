Rails.application.routes.draw do
  resources :users
  root 'home#index'
    get 'signup', to: 'users#new'
end
