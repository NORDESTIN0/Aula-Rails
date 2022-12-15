Rails.application.routes.draw do
  resources :mining_types
  resources :pc_types
  resources :posts
  root to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
