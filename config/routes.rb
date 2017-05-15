Rails.application.routes.draw do

  get 'main/index' => 'main#index'

  root 'main#index'
end
