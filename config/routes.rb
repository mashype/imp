Rails.application.routes.draw do

  devise_for :users

  resources :providers do
    resources :tasks, except: [:index] 
  end

  resources :tasks do
  	resources :notes
  end

  resources :tasks, only: [:index]

  root 'providers#index'

end
