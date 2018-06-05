Rails.application.routes.draw do

  resources :sponsors do
    resources :tasks
  end

  resources :dispositions
  resources :priorities
  resources :locations
  authenticated :user do
  	root 'tasks#index', as: "authenticated_root"
  end

  root 'welcome#index'

  devise_for :users

  resources :providers do
    resources :tasks do
      put :finish, :on => :member
    end
    
    resources :locations, except: [:index] 
    resources :contacts, except: [:index] 
  end

  resources :tasks do
  	resources :notes
  end

  resources :tasks, only: [:index]

end
