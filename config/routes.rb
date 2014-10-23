Rails.application.routes.draw do
  resources :messages, only: [:new, :create] #for contact us page
  root 'messages#new'
end
