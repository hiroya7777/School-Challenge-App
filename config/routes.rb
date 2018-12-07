Rails.application.routes.draw do

 get 'topics/new'
 get 'sessions/new'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get  'pages/help'

  resources :users

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

<<<<<<< HEAD
  resources :topics do
  resources :comments,only:[:new, :create]

end
=======
  resources :comments,only:[:new, :create]
>>>>>>> edc0f735faa4b3307f3797e1589b2b737cbd4cfb
end
