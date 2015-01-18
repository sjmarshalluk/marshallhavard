Rails.application.routes.draw do

  resource :session
  resources :guides
  resources :questions
  resources :services
  resources :users

  root "pages#index"
end
