Rails.application.routes.draw do
  root 'pages#home'
  resources :admins

  resources :blogs, :path => "blog"

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
end
