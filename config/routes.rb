Kebapress::Engine.routes.draw do
  resources :dashboard, only: [:index]
  resources :posts
  resources :categories, only: [:show]
end
