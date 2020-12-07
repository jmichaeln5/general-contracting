Rails.application.routes.draw do

  resources :flashcards
  root 'pages#home'
  get 'pages/about'
  get 'pages/index'
  get 'pages/test'
  get 'pages/doors_and_windows'

  resources :clients
  devise_for :users

  # resources :users do
    # devise_for :users
  # end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
