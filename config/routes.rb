Rails.application.routes.draw do
  resources :track_workshops
  resources :tracks
  resources :workshop_participants
  resources :participants
  resources :workshop_facilitators
  devise_for :facilitators
  resources :facilitators
  resources :workshops
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', :as => :rails_health_check

  # Defines the root path route ("/")
  root 'workshops#index'
end
