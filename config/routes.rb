Rails.application.routes.draw do
  root 'pages#index'
  resources :admins, except: [:new, :create]
  resources :pages, as: "projects", :path => "project"
  resources :blogs, :path => "blog"

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # get 'resume' => 'pages#resume'
end
