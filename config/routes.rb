Rails.application.routes.draw do
  root 'pages#home'
  get 'signup' => 'admins#new'
  resources :admins

  get 'blog' => 'blogs#index'
  get 'blog/new' => 'blogs#new'
  post 'blog/new' => 'blogs#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
