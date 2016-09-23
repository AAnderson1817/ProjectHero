Rails.application.routes.draw do
root 'sessions#home'
  resources :users

  resources :goals
  patch '/goals/:id/toggle-status' => 'goals#toggle_status', as: 'toggle_goal'

  resources :sessions, only: [:new, :create]

  delete '/logout' => 'sessions#destroy'
end
