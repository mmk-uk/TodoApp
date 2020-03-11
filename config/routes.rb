Rails.application.routes.draw do
  get "/",to: 'todo#list'
  get "todo/new",to: 'todo#new'
  post "todo", to: 'todo#create'
  post "todo/:id/check", to:"todo#check"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
