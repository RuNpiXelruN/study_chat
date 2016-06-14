Rails.application.routes.draw do

  resources :subjects, only: [:new, :create, :index, :show]
  resources :locations
  resources :profiles
  resource :session, only: [:new, :create, :destroy]
  resources :chats, only: [:index, :show] do
    resources :comments
  end
  resources :comments, only: [:create, :edit, :update, :destroy]
  resources :users do
    resources :chats
      post 'follow', to: 'following_relationships#create'
    delete 'follow', to: 'following_relationships#destroy'
  end
  get 'home/index', to: 'home#index', as: '/home'

  root 'landing#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
