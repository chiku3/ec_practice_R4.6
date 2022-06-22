Rails.application.routes.draw do
  
  root "homes#top"
  get 'about' => "homes#about"
  
  resources :customers, only:[:edit, :update]
  get 'customers/my_page' => "customers#show"
  get 'customers/unsubscribe' => "customers#unsubscribe"
  patch 'customers/withdraw' => "customers#withdraw"
  
  resources :items, only:[:index, :show]
  
  resources :addesses, only:[:index, :edit, :create, :update, :destroy]

  resources :orders, only:[:new, :create, :index, :show]
  post 'orders/confirm' => "orders#confirm"
  get 'orders/complete' => "orders#complete"
  
  resources :cart_items, only:[:index, :update, :destroy, :create]
  delete 'cart_items/destroy_all' => "cart_items#destroy_all"
  
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
  
  namespace :admin do
    resources :order_details, only:[:update]
  end
  
  namespace :admin do
    resources :orders, only:[:show, :update]
  end
  
  namespace :admin do
    resources :customers, only:[:index, :show, :edit, :update]
  end
  
  namespace :admin do
    resources :genres, only:[:index, :create, :edit, :update]
  end
  
  namespace :admin do
    resources :items, only:[:index, :new, :create, :show, :edit ,:update]
  end
  
  namespace :admin do
    get 'admin' => "homes#top"
  end
  



  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
