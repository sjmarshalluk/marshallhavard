Rails.application.routes.draw do


  resources :guides
  resources :questions
  resources :services

  root "guides#index"
end
