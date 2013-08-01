StuffFinder::Application.routes.draw do
  devise_for :users
  get "categories/show"
  root "welcome#index"
  resources :classifieds
  resources :categories, only: :show
end
