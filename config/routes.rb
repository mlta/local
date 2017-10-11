Rails.application.routes.draw do
  get 'login/index'

  get 'welcome/index'
  root 'welcome#index'

  resources :users
  resources :cities
  resources :comments
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
