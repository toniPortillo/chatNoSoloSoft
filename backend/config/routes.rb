Rails.application.routes.draw do
  resources :users
  resources :chatrooms do
    resources :messages
  end
end
