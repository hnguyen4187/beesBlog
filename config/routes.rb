Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }

   # get 'comments/index'
   # get 'comments/show'
   # get 'comments/edit'
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'
  # get 'posts/destroy'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  resources :users
  resources :comments

end
