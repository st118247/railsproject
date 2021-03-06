Rails.application.routes.draw do
  resources :studenthousinginfos
  get 'ait/dormroom'

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

  post 'studenthousinginfos/newedit'
  
  resources :roomlists
  resource :dorm_detials, path: '/roomlists'

  post 'adminuser/wf_approve'
  post 'adminuser/wf_reject'

  get 'adminuser/port'
  get 'adminuser/index'
  get 'adminuser/edit'

  #get 'adminuser/update_status'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'adminuser#port'

end
