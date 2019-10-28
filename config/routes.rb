Rails.application.routes.draw do
  get 'comments/index'
  resources :users do
    resources :posts
  end

  resources :categories do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  root 'home#index'
    get 'signup', to: 'users#new'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
end
