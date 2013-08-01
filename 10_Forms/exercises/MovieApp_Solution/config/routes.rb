MoviesApp::Application.routes.draw do
  root "movies#index"
  resources :movies
  get 'search', to: 'movies#search'
end
