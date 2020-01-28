Rails.application.routes.draw do
  get 'topics/index'
  get 'home/index'
  resources :answers
  resources :questions
  devise_for :users
  resources :users do
    member do
      post :follow
    end
  end
  resources :topics do
    member do
      post :follow
    end
  end
  root to: "questions#index"
end
