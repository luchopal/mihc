Rails.application.routes.draw do

  get 'main/index' => 'main#index'
  root 'main#index'

  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get 'users/list'
  resources :users do
  end

  resources :patients do
  end

  resources :medical_consultations do
  end

end
