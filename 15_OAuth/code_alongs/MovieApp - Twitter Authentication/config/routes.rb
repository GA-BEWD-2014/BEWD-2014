MoviesApp::Application.routes.draw do
  get "reviews/create"
  get "sessions/create"
  root "movies#index"
  resources :movies
  resources :reviews, only: :create
  get 'search', to: 'movies#search'
  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: "logout"
end
