Rails.application.routes.draw do
  root 'top_pages#top'
  resources :categories, only: %i[index show] do
  resources :questions, only: %i[index]
  end
  resources :users, only: %i[new create] 
  resources :results, only: %i[show]
  get 'login', to: 'user_sessions#new', as: 'login'
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy', as: 'logout'
end
