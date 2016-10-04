Rails.application.routes.draw do
  resources :blog_posts do
  	resources :comments, only: [:create, :edit, :update, :destroy]
  end

  root "blog_posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
