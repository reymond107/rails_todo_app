Rails.application.routes.draw do
  
  devise_for :users 

  get 'users/sign_up'

  resources :categories do
    resources :tasks
  end
  
  root 'categories#index'
end
