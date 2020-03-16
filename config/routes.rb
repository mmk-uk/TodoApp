Rails.application.routes.draw do

  get "/", to: "home#top"

  get "/todo/:user_id/list",to: 'todo#list'
  get "todo/new",to: 'todo#new'
  post "todo", to: 'todo#create'
  post "todo/:id/check", to:"todo#check"
  get "todo/:id/edit", to:"todo#edit"
  patch "todo/:id/update", to:"todo#update"
  post "todo/:id/delete", to:"todo#delete"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  #get    '/users',          to: 'users#index'   # ユーザ一覧ページ
  #get    '/users/:id',      to: 'users#show'    # 特定のユーザページ
  #get    '/users/new',      to: 'users#new'     # ユーザ登録ページ
  #post   '/users',          to: 'users#create'  # ユーザ作成
  #get    '/users/:id/edit', to: 'users#edit'    # 特定のユーザ編集ページ
  #patch  '/users/:id',      to: 'users#update'  # 特定のユーザ更新
  #delete '/users/:id',      to: 'users#destroy' # 特定のユーザ削除

  get "/login", to:"sessions#login_form"
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
