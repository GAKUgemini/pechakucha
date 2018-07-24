Rails.application.routes.draw do
  resources :users, only: [:index, :show, :edit, :update]
  get 'serch/index'
  get 'selects/index'
  root 'pages#help'
  resources :notes do
    resources :notecomments
  end
  resources :pages do
    resources :tweets
  end
  resources :tweets do
    resources :comments
  end
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
  get 'goods/index'
  post '/goods', to: 'goods#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
