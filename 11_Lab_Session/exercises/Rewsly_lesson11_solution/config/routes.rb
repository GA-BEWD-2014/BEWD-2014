Rewsly::Application.routes.draw do
  root 'stories#index'
  resources :stories
  get 'search', to: 'stories#search'
end
