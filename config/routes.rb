Rails.application.routes.draw do
  namespace :admin do
      resources :user_answers
      resources :users
      resources :results
      resources :questions
      resources :categories
      resources :bookmarks
      resources :answers

      root to: "user_answers#index"
    end
  root 'top_pages#top'
  get 'terms', to: 'top_pages#terms'
  get 'privacy_policy', to: 'top_pages#privacy'
  resources :bookmarks, only: %i[index]
  resources :categories, only: %i[index show] do
    resource :question, only: %i[show] do
      resource :bookmark, only: %i[create destroy]
      resources :results, only: %i[index show create]
    end
  end
  resources :users, only: %i[new create]
  resource :profile, only: %i[edit show update]
  get 'login', to: 'user_sessions#new', as: 'login'
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy', as: 'logout'
end
