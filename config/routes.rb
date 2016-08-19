Rails.application.routes.draw do

  devise_for :users
  resources :providers do
    resources :tasks, except: [:index]
  end

  root 'providers#index'

end
