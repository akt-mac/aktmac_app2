Rails.application.routes.draw do
  get 'plans/new'
  root 'top_pages#top'
  get '/signup', to: 'users#new'

  get '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    resources :plans
  end
end
