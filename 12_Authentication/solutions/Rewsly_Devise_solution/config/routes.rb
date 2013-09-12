Rewsly::Application.routes.draw do
  devise_for :users
  root 'stories#index'
  resources :stories
end
