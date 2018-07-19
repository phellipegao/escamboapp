Rails.application.routes.draw do

    get 'admin', to: 'backoffice/dashboard#index'
    get 'backoffice', to: 'backoffice/dashboard#index'

  namespace :backoffice do
    resources :categories, except: [:show, :destroy]
    resources :admins, except: [:show]
    get 'dashboard', to: 'dashboard#index'
  end
  namespace :site do
    get 'home', to:'home#index'
  end
  devise_for :admins, :skip => [:registration]
  devise_for :members
  root 'site/home#index'
end
