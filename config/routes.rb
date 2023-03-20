Rails.application.routes.draw do
  get 'categories/index'
  get 'question/index'
  root 'top_pages#top'
  resources :users, only: %i[new create] 
  get 'login', to: 'user_sessions#new', as: 'login'
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy', as: 'logout'
end
