Rails.application.routes.draw do
  root 'top_pages#top'
  resources :categories, only: %i[index show] do
    resource :question, only: %i[show] do
      resources :results, only: %i[index show create]
    end
  end
  resources :users, only: %i[new create]
  resources :bookmarks, only: %i[index create destroy]
  resource :profiles, only: %i[edit show update]
  get 'login', to: 'user_sessions#new', as: 'login'
  post 'login', to: 'user_sessions#create'
  post 'logout', to: 'user_sessions#destroy', as: 'logout'
end
