Rails.application.routes.draw do
  get 'prototypes/index'
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
    collection do
    end
  end
  # resources :prototypes, only:[:new,:create,:show,:edit,:update,:destroy]
 resources :users, only: :show
end

