Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end

# Used [] so /posts/:id routes aren't created, just posts/:post_id/comments routes.
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'


  root 'welcome#index'
end
