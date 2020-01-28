Rails.application.routes.draw do
  resources :questions do
    resources :answers
  end
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
