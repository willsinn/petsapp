Rails.application.routes.draw do
  get 'owners/index'
  get 'owners/show'
  get 'owners/new'
  get 'owners/create'
  get 'owners/edit'
  get 'owners/update'
  get 'owners/destroy'
#  resources :owners, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
