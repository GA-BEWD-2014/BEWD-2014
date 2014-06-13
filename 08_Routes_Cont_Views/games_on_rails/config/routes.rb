GamingApp::Application.routes.draw do
  root "games#index"
  resources :secret_numbers, :only => [:new, :show]
  get '/games', to: 'games#index'
  get '/secret_numbers', to: 'secret_numbers#new'

  resources :rock_paper_scissors, :only => [:new, :show]
  get '/rock', to: 'rock_paper_scissors#new'
  get '/rocks', to: 'rock_paper_scissors#new'

end
