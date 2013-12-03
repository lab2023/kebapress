Kebapress::Engine.routes.draw do
  get "categories/show"
  resources :dashboard, only: [:index]
  resources :posts
  resources :categories, only: [:show]
end
