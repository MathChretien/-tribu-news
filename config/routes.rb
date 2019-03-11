Rails.application.routes.draw do
  root to: 'pages#home'
  resources :boxes
  resources :pages, only: [:index, :show, :new, :create, :edit, :update]
  resources :pictures
  resources :newspapers, only: [:index, :show, :edit, :update]
  resources :tribes
  # get 'boxes/index'
  # get 'boxes/show'
  # get 'boxes/new'
  # get 'boxes/create'
  # get 'boxes/edit'
  # get 'boxes/update'
  # get 'boxes/destroy'
  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/new'
  # get 'pages/create'
  # get 'pages/edit'
  # get 'pages/update'
  # get 'pictures/index'
  # get 'pictures/show'
  # get 'pictures/new'
  # get 'pictures/create'
  # get 'pictures/edit'
  # get 'pictures/update'
  # get 'pictures/destroy'
  # get 'newspapers/index'
  # get 'newspapers/show'
  # get 'newspapers/edit'
  # get 'newspapers/update'
  # get 'tribes/index'
  # get 'tribes/show'
  # get 'tribes/new'
  # get 'tribes/create'
  # get 'tribes/edit'
  # get 'tribes/update'
  # get 'tribes/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
