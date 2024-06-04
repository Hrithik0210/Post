# config/routes.rb
Rails.application.routes.draw do
  resources :posts do
    post '_first_form', on: :collection
  end
  resources :comments, only: [:new,:create]
  resources :users, only: [:new, :create]

  resources :posts do
    resources :comments
  end
  
  root "posts#_first_form"
end
