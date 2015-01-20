Rails.application.routes.draw do

  resource :session
  resources :guides
  resources :questions
  resources :services
  resources :users
  resources :clients

  root "pages#index"
end
