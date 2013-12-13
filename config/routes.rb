Kebapress::Engine.routes.draw do
  resources :posts, only: [:index, :show]

  namespace :hq do
    resources :dashboard, only: [:index]
    resources :posts, except: [:index, :show]
    resources :categories
  end

  get '/hq', to: 'hq/dashboard#index'
end
