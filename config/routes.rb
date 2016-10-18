Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :products
  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
