Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root to: 'home#index'
  resources :movies
end
