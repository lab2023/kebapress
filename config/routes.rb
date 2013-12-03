Kebapress::Engine.routes.draw do
  resources :dashboard, only: [:index]
  resources :posts
end
