Rails.application.routes.draw do
  resources :users
  resources :conversations do
    resources :messages
  end

  mount ActionCable.server => '/cable'
end
