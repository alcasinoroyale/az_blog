Rails.application.routes.draw do
  resources :users do
    resources :posts
  end

  resources :posts

  root 'home#index'
    get 'signup', to: 'users#new'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
end
