Rails.application.routes.draw do

  get '/' => 'patients#index'
  root 'main#index'

  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'users/list'
  resources :users do
    collection do
      get 'forgot_password'
      post 'send_new_password'
    end
    member do
      get 'edit_password'
      post 'update_password'
    end
  end

  resources :patients do
  end

  resources :medical_consultations do
    member do
      get 'add'
    end
  end

end
