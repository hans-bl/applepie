Rails.application.routes.draw do
  devise_for :users
  root to: 'ipods#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :ipods, only: [ :index, :show, :new, :create, :update, :edit ] do
    resources :purchases, only: [ :new, :create ]
  end
  resources :users, only: [ :new, :create, :show ]
end
