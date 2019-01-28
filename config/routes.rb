#get ページを取得するときに使う通信手段
#post データを作成するときに使う通信手段
#put データを置換するときに使う通信手段
#patch データを部分的に更新するときに使う通信手段
#delete データを削除するときに使う通信手段

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


  resources :topics do
  resources :comments,only:[:new, :create]

end
end
