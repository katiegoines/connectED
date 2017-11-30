Rails.application.routes.draw do
  root 'teachers#index'
  resources :teachers
  resources :cohorts
  resources :students
  resources :assignments
  resources :submissions
  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
end
