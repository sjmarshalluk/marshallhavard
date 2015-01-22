Rails.application.routes.draw do

  get '/advice' => 'pages#advice'
  get '/big_menu' => 'pages#big_menu'

  resource :session
  resources :guides
  resources :questions
  resources :services
  resources :users
  resources :clients do
  	resources :guides
  	resources :questions
  	resources :services
  end

  root "pages#index"
end
