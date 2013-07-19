TwilioApp::Application.routes.draw do
  root 'users#index'
  resources :users do
      resources :messages, only: :create
  end
end
