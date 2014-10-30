Rails.application.routes.draw do
  devise_for :users
  get 'angular/index'
  root 'angular#index'

  namespace :apiv1 do
    resources :notes
  end
end
