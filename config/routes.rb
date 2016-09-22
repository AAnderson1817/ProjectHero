Rails.application.routes.draw do
root 'sessions#home'
  resources :users
  resources :goals
  resources :sessions, only: [:new, :create]

  delete '/logout' => 'sessions#destroy'
end
