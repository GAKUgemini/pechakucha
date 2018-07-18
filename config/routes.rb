Rails.application.routes.draw do
  get 'selects/index'
  root 'pages#help'
  resources :notes
  resources :pages do
    resources :tweets
  end
  resources :tweets do
    resources :comments
  end
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
