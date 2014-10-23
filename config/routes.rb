Rails.application.routes.draw do
  resources :users
  root 'users#index'

  get 'messages/contact_page'
end
