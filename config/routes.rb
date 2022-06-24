Rails.application.routes.draw do
  devise_for :refuges
  devise_for :users
  root to: 'pages#home'
  get 'profile', to: 'pages#profile', as: :profile
  get 'refuge_dashbord', to: 'pages#refuge_dashbord', as: :refuge_dashbord

  resources :refuges do
    resources :animals, except: [:destroy]
      resources :likes
  end
  resources :animals, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
