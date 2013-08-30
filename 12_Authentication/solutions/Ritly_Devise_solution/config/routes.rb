Ritly::Application.routes.draw do
  devise_for :users
  root "home#index"
  resources :urls, only: [:new, :create, :show]
  get '/:some_totally_random_value', to: 'urls#redirector'
  get '/:some_totally_random_value/preview', to: 'urls#preview'
end
