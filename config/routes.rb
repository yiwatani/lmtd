Rails.application.routes.draw do
  root 'tweets#index'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
    member do
      post 'create_like'
    end
  end
  resources :users, only: :show
  resources :categories, only: :show
end