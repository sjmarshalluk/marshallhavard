Rails.application.routes.draw do


  resources :guides
  resources :questions
  resources :services
  resources :users

  root "guides#index"
end
