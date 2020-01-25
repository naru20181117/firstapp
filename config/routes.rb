Rails.application.routes.draw do
  get 'card/new'
  get 'card/create'
  get 'list/new'
  post 'list/create'
  root 'top#index'
  # add the users with devise
  devise_for :users
  # resources can create the routing of CRUD and others of 7 methods.
  resources :list, only: %i(new create edit update destroy) do
    # it is easier to write except when they have methods() new create show edit update destroy) because of resources
    resources :card, except: %i(index)
  end
end
