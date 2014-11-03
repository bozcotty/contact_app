Rails.application.routes.draw do

  root 'spaceships#index'
  resources :abductees

  resources :alien_probe_doctors

  resources :spaceships
end
