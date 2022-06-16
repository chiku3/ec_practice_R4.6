Rails.application.routes.draw do
  devise_for :admins,controllers:{
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrarions: 'admins/registrarions'
  }

  devise_for :customers, controllers:{
    sessions: 'sessions',
    passwords: 'passwords',
    registrations: 'registrations'
  }

  get 'addresses/index'
  get 'addresses/edit'
  get 'addresses/create'
  get 'addresses/update'
  get 'addresses/destroy'
  get 'index/edit'
  get 'index/create'
  get 'index/update'
  get 'index/destroy'
  get 'orders/new'
  get 'orders/confirm'
  get 'orders/complete'
  get 'orders/create'
  get 'orders/index'
  get 'orders/show'
  get 'cart_items/index'
  get 'cart_items/update'
  get 'cart_items/destroy'
  get 'cart_items/destroy_all'
  get 'cart_items/crete'
  get 'items/index'
  get 'items/show'
  get 'homes/top'
  get 'homes/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
