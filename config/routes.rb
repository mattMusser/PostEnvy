Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]
  resources :confirm, only: [:post]

  get 'about' => 'welcome#about'
  post 'confirm' => 'users#confirm'


  root 'welcome#index'
end
