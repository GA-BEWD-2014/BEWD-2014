Ritly::Application.routes.draw do
  root "home#index"

  resources :urls, only: [:new, :create, :show]

  get '/:code', to: 'urls#redirector'
  get '/:code/preview', to: 'urls#preview'
end
