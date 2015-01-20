Rails.application.routes.draw do

  resource :session
  resources :guides
  resources :questions
  resources :services
  resources :users
  resources :clients do
  	resources :guides
  end

  root "pages#index"
end
