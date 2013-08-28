MuseumApp::Application.routes.draw do
  root "paintings#index"
  get 'search', to: 'paintings#search'
  resources :paintings
  resources :museums
  resources :artists
end
