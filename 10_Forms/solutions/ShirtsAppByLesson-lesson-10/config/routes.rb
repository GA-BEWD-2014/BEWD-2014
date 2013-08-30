ShirtApp::Application.routes.draw do
  root "shirts#index"
  get "search", to: "shirts#search"
  resources :shirts
end
