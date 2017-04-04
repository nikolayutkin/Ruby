Rails.application.routes.draw do
  get 'login/new'

  get 'login/create'

  get 'login/destroy'

  resources :users
  get 'project/input'

  get 'project/view'
  
  root 'project#input'
  
  post 'login/create'
 
end
