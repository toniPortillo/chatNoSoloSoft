Rails.application.routes.draw do
  resources :users
  resources :conversations
  resources :messages
end
