Rails.application.routes.draw do
  get 'adminuser/listroom'

  get 'adminuser/ban'
  post 'adminuser/ban'

  get 'adminuser/unban'
  post 'adminuser/unban'

  get 'adminuser/staff'
  post 'adminuser/staff'

  get 'adminuser/manager'
  post 'adminuser/manager'

  get 'adminuser/admin'
  post 'adminuser/admin'
  
  resources :roomlists

  get 'adminuser/port'
  get 'adminuser/index'
  get 'adminuser/edit'

  #get 'adminuser/update_status'

  devise_for :users
  resources :quotations

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'adminuser#port'

end
