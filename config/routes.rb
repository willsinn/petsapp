Rails.application.routes.draw do
  resources :pets
  get 'owners/ownerpets', to: 'owners#ownerpets'
  resources :owners
#  post 'owners/:id/edit', to: ''
  # get 'owners/new', to: 'owners#new'
  # post 'owners', to: 'owners#create'
  #
  # # get 'owners/:id', to: 'owners#show'
  # get 'owners/:id/edit', to: 'owners#edit'
  # get 'owners/update'
  # get 'owners/destroy'

  #  resources :owners, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
