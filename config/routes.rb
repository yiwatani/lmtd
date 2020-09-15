Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
    member do
      post "create_like"
    end
  end
  resources :users, only: :show
end
