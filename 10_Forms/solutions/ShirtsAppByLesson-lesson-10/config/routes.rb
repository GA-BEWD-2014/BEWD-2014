ShirtApp::Application.routes.draw do
  root "shirts#index"
  resources :shirts
end
