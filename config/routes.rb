Rails.application.routes.draw do
  root 'pages#index'
  resources :admins
  resources :pages, :path => "projects"
  resources :blogs, :path => "blog"

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
