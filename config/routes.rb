Rails.application.routes.draw do
  devise_for :users
  resources :blog_posts do
  	resources :comments, only: [:create, :edit, :update, :destroy]
  end

  get "your_posts" => 'blog_posts#your_posts'

  get "user_posts" => 'blog_posts#user_posts'

  root "blog_posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
