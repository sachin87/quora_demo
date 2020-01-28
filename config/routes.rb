Rails.application.routes.draw do
  get 'home/index'
  resources :answers
  resources :questions
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
