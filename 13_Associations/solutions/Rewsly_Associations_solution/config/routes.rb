Rewsly::Application.routes.draw do
  devise_for :users
  root 'stories#index'
  resources :stories do
    resources :comments, only: :create
  end
end
