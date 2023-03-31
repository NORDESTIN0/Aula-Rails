Rails.application.routes.draw do
  get 'homepage/index'
  resources :hunters
  resources :mining_types
  resources :posts
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
