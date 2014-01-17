Kebapress::Engine.routes.draw do

  resources :dashboard, only: [:index]
  resources :posts, except: [:show, :index]
  resources :categories
  post '/posts/imageUpload', to: 'posts#image_upload'

  get '/', to: 'dashboard#index'
end
