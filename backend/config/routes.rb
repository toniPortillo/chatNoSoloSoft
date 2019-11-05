Rails.application.routes.draw do
  root 'sessions#new'

  resources :users
  resources :sessions
  resources :conversations
  resources :messages

  mount ActionCable.server => '/cable'
end
