Rails.application.routes.draw do
  root 'top_pages#top'
  resources :users
end
