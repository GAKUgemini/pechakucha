Rails.application.routes.draw do
  get 'selects/index'
  root 'pages#help'
  resources :pages
  resources :tweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
