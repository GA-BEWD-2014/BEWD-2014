Rewsly::Application.routes.draw do
  # get "comments/create"
  devise_for :users
  root 'stories#index'
  resources :stories do
    resources :comments, only: :create
  end
end
