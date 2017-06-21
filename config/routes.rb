Rails.application.routes.draw do

  get 'details/index'

  get 'details/new'

  resources :paintings, :about
  
  get 'contact', to: 'messages#new', as: 'new_message'
  post 'contact', to: 'messages#create', as: 'create_message'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'home#index', as: 'home'
end
